Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA179288CC
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754697593; cv=none; b=KA4QF9tL+zKJKITakJczdxhhnQ0Yz+FzS0VwctRwiAvG9DtDgWkdBNTu0e8AQW05VayCCotOvBdXCe2yAugGkg0le6ZUZlrrY+u7lkkPggDVNL9si+4TZGgtJ4TjdOQq7H71Xjy5U4mIMxNZPxTN0PAmNuAW5wdhin+iblkoaXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754697593; c=relaxed/simple;
	bh=mYpBxqPRXP9/k8L4KJ2Dvuw1r3U+dyC+Qkf1qgQO8PU=;
	h=To:Subject:From:Message-Id:Date; b=heTIPKmFYCL3FlwwwMDjaGmyLMmMVUQ5R7kDkQq7+I3/2Xu/xln/tZqYAsnSJ85yvvWln+8R5JDpUNIUyMa0r/9AYTMf0FYzLzOQJcZX7IblKY4m3I2c+4XOvLdvPl6iOKIpSFnk5ebZZx+T1ArLb3ubAdgQnNoMNBwMn1mcT/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6lypun5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6lypun5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E654C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754697593;
	bh=mYpBxqPRXP9/k8L4KJ2Dvuw1r3U+dyC+Qkf1qgQO8PU=;
	h=To:Subject:From:Date:From;
	b=J6lypun5HyjAYKXsEBd2l8gSa6VjbszH93/xZDG/ScFWPdTEojO56VEZeyMplpV8P
	 /FTainYUBUQU5icISbx9nuz9M+pwCn0KVgLfzX5MX3jQgNu1Hup/0ds4bs7OuVnLRP
	 j0iz1L8AnE20B2EajkBa0UVwBtb38oLGCU5nsVyVJr+Xq8OmVGNvF8m9g+iGvDByyZ
	 +AyxeR5oDwG42abTE3YEcF5Qu0rPeMbzZj2TqKS4S6DGRtLQXNvF0jul7dtHbsDQz5
	 f9x0y1P+8glg9g9ZQipvyO7RGFNSMcxIGRw+kypO45qMd0HxzKykuekeJo1mo/9FuG
	 3R3MYzJtnDjGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F94DC87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469759357.12011.12252084580395640620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a1c4baacf4f81f1977313e230074f704697967da669adc13b85cab91d27907
Date: Fri, 08 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754697593
