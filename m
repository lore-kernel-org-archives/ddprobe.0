Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3293131BCA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766749434; cv=none; b=W3EBwkMwjzG8IoFFk5anz5KjxUpR8VQpzeKwBkWbVOO3rDsF9lVcTwQftKALOZKOzgD6KkLi8iRQzZTCqKegthbIQhhUp87JGok/MJdiuQUN9L5ryvHkgaZodZauHSOaZiwgVVjkkI4WFfZbcYNOt+iq1LMafX5f7Mpw03RBJXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766749434; c=relaxed/simple;
	bh=LJhYuQq5qBeTqH/hOc+LT8jIY3awENIciMKlpc7kZcg=;
	h=To:Subject:From:Message-Id:Date; b=JgJrHWmacGpF4EyvNGElHLUiad6R1D7qfmm1GIASjVvjebkRKXzT5OzqQxKRayxTkM8yQaKahI/2im+uXxE8jDdFbKYN+bk55FJpuwLCAGK26J2bA+hGJv/O32G/hGKkbZywPgVPwoo4+28aD6VlBG0Sj4i7SkIlxrP+JznkpxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfrQ6MX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfrQ6MX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A894AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766749433;
	bh=LJhYuQq5qBeTqH/hOc+LT8jIY3awENIciMKlpc7kZcg=;
	h=To:Subject:From:Date:From;
	b=mfrQ6MX8p3b6cz1B+nf7HUj8M5Iuq5E6Giy9V+Zup7Y1henKBuHtsHkpaeU0JYbw3
	 cdPkYEKu8MYtc7rzgT7NUM2VrUzymX+Qyz+4twzq2vu8lA/j5zkrsUV7OWON8AtJSP
	 tK7fUDppSxsw2pTmL4/PU8D3/udMdNo6e24ZTCGREt3vHE00c/4UmgljVkxK94aPsU
	 TfFRm/AWOgyyF5K79R5tESkXekBKnLueaYEfsqoneRUY146+mGo8EZLqrDv3rpToYY
	 HXvh2DE3IreVH00Ab1kAc3IbGX/ZmzDF3GVzN+a9jjUeqgBYVj4yfEFbBLymUhy0M6
	 e3QkP7cCDldWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97335E8FDA8
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176674943358.31596.2590590572475196510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40cf1ad1313a27e4c6330fc86135e4700c240d35b4ea28411934d34c002ab94
Date: Fri, 26 Dec 2025 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766749433
