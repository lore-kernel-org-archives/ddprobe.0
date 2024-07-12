Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5476E51C21
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720822763; cv=none; b=mtOjcs0HHYH5/H/5oEWxovJ1yg2iqy1DeGGgjbBV8gcxD4bQpuAFDI53o7383uerTuo4q92KswHBWZYUXU7p1AYWZoS2nfqPdL8gGeW+tQ2igTvAgAR3ttJ9II5gCcK2UJSWGIFBcR6SqQyKxxfGixJcQHIqsisiAkS6CF62GSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720822763; c=relaxed/simple;
	bh=ttiLp2JhSB8vQC6Su8g7zqsN0Ll3h8qppTxJF0aKhAM=;
	h=To:Subject:From:Message-Id:Date; b=fP5M1KNhFJE3eqMPFDsSTwmlpVGZagppZV4iV9hAo/F5tTzMPUaPiVHkaXfg9tHMp5y8abGUIsrHnJMcSstYNBga9F4lGm8fSJRVOxGrLcLOhq7S9H/zo3vn3YEZ60hDFX9kQaoDsNf+J/ygXrbp8D0ZeU/d10bGtqAE7ffMfno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEL7ImeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEL7ImeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E85F5C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720822762;
	bh=ttiLp2JhSB8vQC6Su8g7zqsN0Ll3h8qppTxJF0aKhAM=;
	h=To:Subject:From:Date:From;
	b=GEL7ImeNJBaRBmWBRKful2PlfA4Z0PVFaD71ju3bQ9tGcPRZtngoa4SsYc8KWMQof
	 bFGbebAkHOyFHgMfjSVjNmT3zUIOGBDcxA8lVxwoGyt2MjXPkotqbCc0x6Kuayn/fi
	 p+p/lFHqJ26nUpZYV2Z0fx/J1M2Fmuhh/UzIWNHGITTYPzyws8ZmX0/GXEjQOWnsMY
	 CEUVHGY+S8iu4dzuJ6571mIRlXrlBj7evHUQAdLBF3/v6i7/aOg+BkCIfqbw2k94Th
	 2lFZbJmC/mZEssb/1++mnMMHoOn5flUwoOpoWcXzdGvZ9xCqHWyLk78CiVI7lCvCQ7
	 7OY2tuQ/vSjZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA150C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172082276281.15762.13465275838045588575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98ce0407ce68972338710f3c7660cdb5528ec7d97c006b411b113c98555298a
Date: Fri, 12 Jul 2024 22:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720822762
