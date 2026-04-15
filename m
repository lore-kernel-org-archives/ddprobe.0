Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370B51E511
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776239254; cv=none; b=G/Ue1WbDvx3TfNt4XwpSOtE14lnD3cX6kKLGaX2vuWTrINCexLH1lYfRfEySEisHn+T8IVjhRB+x4MRtNaVb3BHVjn1mvADXEvFHIOVOFbuv9szE54qpJj9NOuoxTK1FAVOFJtXk1706rRO79TgnTLb+EAHH3bzf5/Gd/7XLY5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776239254; c=relaxed/simple;
	bh=JjrnSVyYzAaM9j5Ep/Yh7BjAmc40FAN+aaHgACD3vDI=;
	h=To:Subject:From:Message-Id:Date; b=d4qI0mqwpg0Upkj3U78xOns3nC1GH/e328h5e64ovNXwuq2nQiGRgZKnC5KwV5fgo7iUC8l5+AY0bnTWXF9a8QWq8pR94VJcIaKlj4uzrHjwDXqk2fm8PAtZmb+ccQoDkDsbd5I7doLF05lN17pUwnW/IQXkqQulOIrV7CLo/jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFYk89SO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFYk89SO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6EFC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776239253;
	bh=JjrnSVyYzAaM9j5Ep/Yh7BjAmc40FAN+aaHgACD3vDI=;
	h=To:Subject:From:Date:From;
	b=qFYk89SOUdGX2I1b8hl3EqlLkY4ew1twyXXETrb2xxANm8IVqz4MC0xPQ908CJl8u
	 Fqp8/AVYpTJ3iDrtuPprkba7GKqBungzG519ty1JFRy0oPofHfN0rS3sYwn9B7Wl6m
	 kwIvrLEJpPaXqDZouzyB+RzKRvOm3qBWDdlnnixRn7+pOlKdU/+r/zJjJaSSWYi6MY
	 eIWsz4AQPSQfW2JxKBeOWwQNgxqH0H2gqQG2Wj1UdEJnvSDqB0DG2Lr66WEIm4SdIV
	 Vc7Dp5krpPw1/NWCOEt0h0bQ5WhYsy4SYvnlB0jC+jnUHwsFbClIqm4qzq56VFKV0x
	 5lUCHJTx+lotw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91ECFA0C3C
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623925368.21722.2790982687878880451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 660f4bd06082bb263991ac502312841c16cf5ace8526fe475db4ffe3e042e172
Date: Wed, 15 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776239253
