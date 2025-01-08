Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B21A19D06A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736333754; cv=none; b=azmsOzCVoPs7QzJnZOR6JpOwWYmikDWqwf0FfNQEOdcxjIP+8ei4cX/ak0GxMzX0dzsiz2hUUt0aop8d0plGIGBWpmqmsU8U80oWpxnJJ/KmH4AWJLtg9Ub9yueo8+Llad3CnxnT/DMMOIG8PM8SO8DzTl+/4uEAQXuTv8UhVwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736333754; c=relaxed/simple;
	bh=/f10IDJoAeZjaVs6G4oZsnAWA2pgbF9IIhiMnA0szOs=;
	h=To:Subject:From:Message-Id:Date; b=Ent2+v6aaItYvc/FIeY1r5gJM+PpgNU0sduFW5z7RHRSRN/AVTgBsmgsCdN5Rd8TFwLPcxCmEL/udVfVwjqKB9CvD1jVhGjpLCUQ2K8LGYfsyqZLJGN7loQ/dhg5m9ex0CPcqK5TgRMpcmZ/HfA+l5oDK/p0L/F1e6+B6AAAQls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChwNrT/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChwNrT/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9521C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736333753;
	bh=/f10IDJoAeZjaVs6G4oZsnAWA2pgbF9IIhiMnA0szOs=;
	h=To:Subject:From:Date:From;
	b=ChwNrT/qWlRME91j8rFFiBqNKVDpQR/B/ifg0XZr+Z3osfLDLy20ZwYUg3hGfhkpy
	 wWfXfxJU/BFXqBm2mda9wPy51YZz3ug/aAQhiAoK2gfGqxD5rC5y8VxQHQitpNQCU/
	 7CI3GhLHG5E9esznnKG9aZjGnFmATVaA3dsqTJgx6W6OhCh+QoAX7M65ERfE+2sHYC
	 5WPHvbcphtOTPn86oVGdC397EHgn0vlFoMxQokLtnYY5LhkAG9tyTiQOneYYDY1vTE
	 vIPHgLzO/5fnSDoO4VhV90vBFmFT/RVBMbmUudrrZE/l09d2yRsUil1k/H59D/lchJ
	 aBR0YFoSgpUhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D3FE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173633375361.7651.8242915640921697881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e71c74a738aa165d1ccf31612711f351ce64c8359c27721bf702aa9fe9448a
Date: Wed, 08 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736333753
