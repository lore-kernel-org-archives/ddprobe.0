Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400E8181CF8
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 16:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716999263; cv=none; b=esz5q8MyKC5cdCqKAOXvU2UYo8pZRt6/wkM5ukD1xMrPGEIoQHGqdwu4Gb7GByaXWBXi1iTog/xlg/6iwSRzwCtDVUZnTLhFJeZHj1Z8/enBl40i6r6NmMFqiL2xxvz5+iFaeuD2x0vkO6LZdFIy9+p/aLVlppOP87nT1jpD7dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716999263; c=relaxed/simple;
	bh=JmgpyAh+XHi8vEGb5VACsWc4ymMc8qBV0kl3M2+Xf9o=;
	h=To:Subject:From:Message-Id:Date; b=Ubx9RPAj1LAoTpOieWHSq2HKuun3g6cWjdJnhbLkSqWL454DiqfDaLBTKuf3oRmEjqcmfGG3MOvQ1tVcJfScIJAXmtEikbwUYazMKQbCdX5wICAuV8ETWCocRHEMWENC0GXqTPehK5RBaCYdE2xP4jXzGPVYBy2GphGojVvUYH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVwqZL7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVwqZL7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E009AC113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 16:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716999262;
	bh=JmgpyAh+XHi8vEGb5VACsWc4ymMc8qBV0kl3M2+Xf9o=;
	h=To:Subject:From:Date:From;
	b=cVwqZL7QMZ8ViCVsMWJHqNAnrbgXuC9046Bowl/TlR5H2Tl65LRSFBMYiVp7Gm8XC
	 DlQLxfHRQ5J15f93HGnj/f8dxyO5neCYpmsCsa7kJpdOGJWY1RHyUSgORWg54lkde9
	 83mHntHa45fpO+qXng6UQCAtVRjEtI1MTMjhNizowjUk6oDNhWgRdTOaxuUKWuP4+l
	 zDxNhN6q/r7VluFdC/dy87wBAclkcdhsmAs3qxhsJFgJ/Xo7US9iB3Excf+qkHqg/P
	 pD34LsZSa+vwYEDySPfNIuoHFGCP8VceeHpKcVLDXQ/HEib4Dy8mAZwD7VHbCsMGKv
	 GSxHZ/L9XraxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5F5C25B7C
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 16:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171699926282.19016.10700432983470216168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ba133a51430d81bfcc4ce9a154982beab90708030d8246dfdb5af6fac8eb21
Date: Wed, 29 May 2024 16:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716999262
