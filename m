Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5661DB375
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774487094; cv=none; b=rsmJbtUsLP1MB7vX42bjKYi3yvEULYNLfWKaG0HpH84oBchqEY/jGirKCOV1Os5RJgxYy2OB/ZXFkCtucjGCc1Qq6Id0SNFgK+6GnnnGChpH0yLbGJ65JrUK/+lmQUS7O+CgRc8yey4JJplvOYW3CXZ40NBFYsy0YnBy8Lwxrsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774487094; c=relaxed/simple;
	bh=PeUY5AJnSWAdWRAPN1CCgFpS1YRVlzbnNV9pgvOqxfs=;
	h=To:Subject:From:Message-Id:Date; b=jk44aXUqw54cKnG6+ZMrd+2E92B0/FQOjOgWbqSDv86035k0G0+K9QjGwGi6jaXt+2BL8Fa9D6MEX0MP5U48YEoLjvYc83dckEZXvsfnGMOKM1QXCNWL9JknoIuH2D144sSkwG+D3X3r62AQNxYHB/mn9GkHUtY9HpNx35xh/q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYtjB/JB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYtjB/JB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B44C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774487093;
	bh=PeUY5AJnSWAdWRAPN1CCgFpS1YRVlzbnNV9pgvOqxfs=;
	h=To:Subject:From:Date:From;
	b=hYtjB/JB3ZP0scfkLHI94Bdk9tdZ+Jw//cygo2gLgqYwExD+0Q4DRXLwDu8jfuXLF
	 NrE/qfBDDhHygUaysD4AZD5ISsvfCNIzNf1IuxOv3Z+vpxWZy/cEqL/jOGvtJInMtQ
	 tpk90+SzMK7L4xjhFqWxepBzZm3gh0k1wwgv9Gn+/v2nCsVHGzmxivE9g6jYs7E7sq
	 1lBfBfb1Klo8sqAdOcoBNnAnl0uUmdYbP9HlXF0ZTtFNPXx2Ll7YMBbw2mw3yFtRUA
	 3Rj9FVL3xboi1/jhNLsptc4lLx3Q1QTQPpGbEVIH/F3U0NULzJfZducc7OgC+J7IU/
	 GIGxLy5LvqLKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91066109E52B
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177448709358.2593.11468962783537047909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e57020740e448189e2f93ecb4f64dcb06fe848794b8e65374ab6206210394f
Date: Thu, 26 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774487093
