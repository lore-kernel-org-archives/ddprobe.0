Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173851B6D06
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756258794; cv=none; b=qzTe5rWuBXWnpihpRbpWPztHn6tDYgR26q8An61V5PfMVN4xUptVE8PAyUG3DahDZx0ZZmURUm5k6LqSaTzOB/jl2//rs84wxF5LTgHrW9eAJfqtE3O+ZtCNVahL3O24Jb1cFk9/2zgiaJAr7X4AZ3Pwad0wERjJEhoWe1AFhus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756258794; c=relaxed/simple;
	bh=jOLmJ1Msc1U4QzBo/Jpdl8TMZDcP20L99+1oSgEa2Vc=;
	h=To:Subject:From:Message-Id:Date; b=iiZWwWx7eBBGQaFSgJ49WT1xQkKh9/yGZ3I/ngYi2ybYypEdZw2BFhAwqYC85KjZRy6IVyycluxCSF5PT8gSotHegI5xhlA7u+/cwF1ieFi1SCsGaP2EGMBE1wkh/Cl3D7KMoSzVQ663fdBbEVw2Rz56CkyTMDGZIMEMiZfxLP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gU3E1iVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gU3E1iVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26B0C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756258793;
	bh=jOLmJ1Msc1U4QzBo/Jpdl8TMZDcP20L99+1oSgEa2Vc=;
	h=To:Subject:From:Date:From;
	b=gU3E1iVJzbXjkhCSPL5Wq7FNMnleVLLNd7XqXPzGDy3bC4UBZYZ9o6kkUE/97hd0P
	 XbQXZTOH4Jb1HkyB5hXS5JCGyPPjfkZmct1hMf+r+/lmgiwubyZFLWkyphYAHgrBYg
	 Sx3vi6NQmGAGcBALHi3CjzHT5S2mdQT/P5duAkwPdose/pgxV7xFQBK97WaPcG98bg
	 l3pvaeaKTT9NQNIVM2E9PUVtytV9tfEt3XqxR1u+fvBYxok9lQxovaHZ+S8ORtEIdq
	 VgNT5xTR3yhkXwJ+wQUViLKyLEKJExrHRgFUTtjYKtc4/NWPBHGlulrWvdyONNuDTe
	 MGtEVwT1b0kLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D0FCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625879358.16376.108050162798070533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e575f316086757cb6897662a21e30b79f30e79c8e97a8879094a7504a0d31b49
Date: Wed, 27 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756258793
