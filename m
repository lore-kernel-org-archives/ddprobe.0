Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108EF4CB2E
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4zlAWdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89DDAC433C8
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701320296;
	bh=k0lIDmJJ5IJpiDoT7V6Q97RYqHiamycaLj7xY6iISBY=;
	h=To:Subject:From:Date:From;
	b=l4zlAWdkjSYw6Q7/Oo6XySGBZQnJJETL5NQDbKkm9o6qxsSHZUDW2Tya2/KKoHYZh
	 kCi43a6nfz7hrsd1oFGVGP52I5v1f64w4QSu6WDz+Y/SWx9kLBaOgkIHLZdnWtQG9R
	 7zHjT4ascgdzPlmMgkPIr1BPoehqKjkfyRMe3H6Aw/DWr0T10e0PZz4AnfZIfksl2f
	 OLc/OwJqOLi2NFqnS3ZEImefJA5s0T3fLYOKMkIF7lcQ5s3+sN+y3LJeiZHlhqQp2j
	 q8Oj4xwNCmkqDYz0fuhtWcqV7HSn8L5lRkenGVb6fOCshIhCVJM4TwgcNyxgDHV40X
	 a7Yrjha+MGBgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654A4C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170132029638.2818.8722081879508745182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be55abc6450b9ce8a5f1b5332da137c033c5c48d2637148e95c98a11761283d3
Date: Thu, 30 Nov 2023 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701320296
