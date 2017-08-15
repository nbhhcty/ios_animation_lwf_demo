/*
 * Copyright (C) 2013 GREE, Inc.
 * 
 * This software is provided 'as-is', without any express or implied
 * warranty.  In no event will the authors be held liable for any damages
 * arising from the use of this software.
 * 
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 * 
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software. If you use this software
 *    in a product, an acknowledgment in the product documentation would be
 *    appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 */

#import <UIKit/UIKit.h>
#import "lwf_renderer.h"

@class LWFBitmapView;

namespace LWF {

class LWFRendererFactory;

class LWFBitmapRendererContext
{
public:
	UIImage *uiImage;
	CGPoint position;
	CGRect frame;
	CGRect uvwh;
	BOOL rotated;

public:
	LWFBitmapRendererContext() : uiImage(0) {}
	LWFBitmapRendererContext(const Data *data,
		const Format::BitmapEx &bx, const std::string &path);
	~LWFBitmapRendererContext();
};

class LWFBitmapRenderer : public Renderer
{
protected:
	LWFBitmapView *m_view;

public:
	LWFBitmapRenderer(LWFRendererFactory *factory, LWF *l, Bitmap *bitmap);
	LWFBitmapRenderer(LWFRendererFactory *factory, LWF *l, BitmapEx *bitmapEx);

	void Destruct();
	void Update(const Matrix *matrix, const ColorTransform *colorTransform);
	void Render(const Matrix *matrix, const ColorTransform *colorTransform,
		int renderingIndex, int renderingCount, bool visible);
};

}   // namespace LWF
