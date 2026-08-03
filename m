Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A75B3537F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785775834; cv=none; b=FJ6fRu24Cuk4iAM4lh76dlAkDj5Bq0RxKAh6ek6N91jVkgAhnWBMA2Xa0jKJlWFVtJbJWBRTKmvYrvSQb0ffwasHiVvBGyYzCLc49L/W4q1SghWP4IlEXfmX4OFcl62esFp69NHgCyYO4U7E8AVPXCs4+c+TSsPIOyaypOrdI78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785775834; c=relaxed/simple;
	bh=6Vhq7yf6QMGkbTIzNnubIJelNhq6q6h9p+qpgC24+Lg=;
	h=To:Subject:From:Message-Id:Date; b=SYi75rKizbcuSYVk7w5Z0EIDYzz+VZjtF1s2Xu04rJXr6KETCYNBF4uLFo5g8Z4BuH4A289Sy6jyCKsm376FNSYE44QPOJ3HWjpxfc2qE1T9FPp1GoD3Oc1tO/V72zR5Uy4V5vQ/QW+pMQHALLerYPSzN/0Rz2JkEaCwsfWYhKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeQKp4/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeQKp4/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3366C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785775833;
	bh=6Vhq7yf6QMGkbTIzNnubIJelNhq6q6h9p+qpgC24+Lg=;
	h=To:Subject:From:Date:From;
	b=YeQKp4/lRRLupRAbVYtVloFQIjVynMuXeeQ4XGQes5rYmRsRQzjPEWSFQEcMqFkoZ
	 NZRmlv2yQQh7mq09fX6FUofYuFNMC5A9uLYihrIr03aS11b7GQDEVIgQA+w42AFPRB
	 IOfB8n+K+22E1nf6fca7d/5iZ/KoVxGGX9fnojsB9aZYVt5HSX6QMffLybR6oYZOWK
	 mBxZ7M/bwihK6Qq+Y/ZNUgEhgujyaqHETwAoN9spiMrxfRaS/mRCI/0aYV0HV54J8s
	 yn8BDPvRL/lP18LsjFVlvhU+afZ/Gv2OW7tLr32ySCf6AgtFZmZBchyuzRJmrsbQBk
	 Bwxcvn2DKbrDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF199C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178577583370.11651.135720949426825814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d862017d1e7ef37c5fd566d52d56fcde5c11364fed04e7043e2948399ba2d406
Date: Mon, 03 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785775833
