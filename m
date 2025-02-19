Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3904D1F8BDC
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 16:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739981934; cv=none; b=TDsMsjbLsSmMxWZeSNaEafLk7H039PIYgr5A3POj6ioPyYWWHJ1B7OSHOEwJGwZw57YtSd3r0l2hB8xXhX1lusAkO6PffqlqRbhRF7xtcDc5hcOvMqYdxoUlk95S9GGIcN9DZUbq52oqmacwkRUkM6kQbHuoThNZ5zsrN2DcT+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739981934; c=relaxed/simple;
	bh=u0a1EXIReeeIHzZ/nGoXqhxL+LWBxMvlBwSHndGiHaI=;
	h=To:Subject:From:Message-Id:Date; b=tgUP0v6xXq2MqqSUM7Yxgvl1XO7H3J8pWIWSxCTo5U4cWtfNYehAOlM6Apq2IUCdhPjD7M7z0AbO4gqp69RMGKn6+jtyTusW1KaGMVXG6E0UpXOZPxDSVGqPJd2Bxp8iMyRXxQME6M6gjrg09adxN+Mz9VJs37fY8fHU3mUExiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjmJ1obp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjmJ1obp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA74CC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 16:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739981933;
	bh=u0a1EXIReeeIHzZ/nGoXqhxL+LWBxMvlBwSHndGiHaI=;
	h=To:Subject:From:Date:From;
	b=UjmJ1obpSp2pDOTwAbR738iEOfcB4V+exCLX5JLnKPIC/2YzoRQwWeu6Cl9PqoJbC
	 To+dBjHZm1RGFv3p/map1vgL5057Gp3YmOhaDg25YlZHC1VHjbnv8ebEcciezf0C8h
	 dDdfpCtDqMs6yZmDXttYdH5J2hz395vv/OTNocXKGYTrBEe0KkBuGIV898LLuFWYzY
	 RzZJU06VCvIGOB9IjZwPsWdIcXiI5ThTGj30ZLEkY8nO7CtkABDGgSq0EjMmgULOMA
	 loOlbwjrubA9fVSJN+0D06KV/FPBl1/bVUYqECXc7b3y5UWKc2dQM6axX//1OxXhWK
	 uSb51UKMymu2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9929BC021B0
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 16:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173998193361.14146.5224404450956136231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5dfb9ebea5a65dceed424e7c120a45f914738fa127d3686d99b3b94873c2bb
Date: Wed, 19 Feb 2025 16:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739981933
