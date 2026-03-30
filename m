Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFED296BD3
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774841094; cv=none; b=J//s90vSiFO50tnMhlmmNhEcv1klWKQQ0qkqw/7ysPOs5FH2pf3NyBxg5/pAtuKL8oM2IzsDx7/ac1e1IXHDweBW894pBww9i8VkfS9LMNAHeac8RHe+nD/tg5IvsETu4i2tncPI9Px9hpFw/rCjYVxVnBSomVImGlg9MhDbssw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774841094; c=relaxed/simple;
	bh=w/+bQ/UrUVzQ5Irvr/6c2HnGh2seMLJK8EnQ0VSXa3Q=;
	h=To:Subject:From:Message-Id:Date; b=DlZcLICxWjdIt7JkXRQXFr2KIkCPatTf8VjWmZh0R8Ep+HluzjULq8CL30UiN7jBuF2W7fsyamxQU7z4BuZzVW5tzSdg/SQQtCZ+8d+GsjUdNv6JsfDqUIRo4kSjFy8mrvK3l9F0i9rWhzCSnblYq0zV08Gt7CAaRGDccGiAg9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6kPSV9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6kPSV9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99E3C116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774841093;
	bh=w/+bQ/UrUVzQ5Irvr/6c2HnGh2seMLJK8EnQ0VSXa3Q=;
	h=To:Subject:From:Date:From;
	b=u6kPSV9LzIzaoPxayVCYnbIMbAbCC9pKo2ZsqKBvG81sZKK4LxHzr9d6OAYC9tDFc
	 tpqZfogNEJPWpkb1OweghNdb90VtBABJZJ1vmtv61PgqhiWtUbBNDi5uefdOQT1i/C
	 DQewnji1F9CSJDAFsvNSFEWYtwo9HyESlqjcsB/OMhVvbJrI4YE8zCdZbF8rOowd7o
	 HVgAXTHjphh3FbzPQaaXTqgchVE2ZCtN4FIXcLCgvww6qkvqBaReEXdxBLFezEldrM
	 kJOe0M2djXoAl/VFTlBD1Yi78XPS37EpC3ohRpa3MZqmAugJ2uSHfUEHwrtFACExh1
	 /Vo2W+Prkz2TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96803FF4936
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177484109359.14852.552430214342028219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55cce87357d196d0e77705e6fbf714a177ec8e9044bdf0d9df1e286691fe93d6
Date: Mon, 30 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774841093
