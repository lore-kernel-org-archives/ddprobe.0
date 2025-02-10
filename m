Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E3AB1C5F14
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 21:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739223354; cv=none; b=Yzc9+zslcFe2bZW6smL0gAIUJEWOwbFQbvNRwYFlbUNU6kXNGpuksx/yyPD/u0Y0V/rAXlYM30uUffFjHVkERx/ziufaEiMtHi1ZV3FZIaMxbNGSXO2Qemmb74gl1aksjUNDuoOd0pNhYCp1WOePoQ92bMtASpXBGwIflRA2kPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739223354; c=relaxed/simple;
	bh=6d7XYYEgvFen3M3llU1BO671eFyoJC3VP6CJh9N54XA=;
	h=To:Subject:From:Message-Id:Date; b=lEydOmc0zFwK0sFMy6TY4vL7YcJyBkDGyFldH23Mdl2Nb3LD96sHMAvoL1FjITdk8FuphWPfY7w9YkFvSCe8euQlNKbSqtj3eE8tftoA4d3Oy3d0AnicoYsK/o0LIHDc9GRm5j+WpHW/3ESDCGIXi72C2eehNcR3rdUWftqtgzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXHF1PiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXHF1PiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1A84CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 21:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739223354;
	bh=6d7XYYEgvFen3M3llU1BO671eFyoJC3VP6CJh9N54XA=;
	h=To:Subject:From:Date:From;
	b=XXHF1PiFzEW5wdpqco9k/4nwfpR2tMwWPIPufAsnkjBIcH0whKFng1lFArUiJvVlB
	 jrFM1WI7K3WlgG3EASVovSSIUBLEK8rpG5QVodOQyp5nhASkkmr9M1scauE/QIslUO
	 dVDIepzMTg/63E0X3/5/qBvWrMOfc0XifXFc2FUtwvn+Vy772xEUPTW1tQd4YMiE67
	 Icv0dPXXTV3/qV6tFzE3//PM8OrBJ9qazM7KKbfXE4kaPiSC6/DjSQAyhQGgwxYuKF
	 apvqm1WdnN1+o+6wP68gOXGlKyM3dV30cMazaaKSKF+pVtMHxNpvL8brZsvdtBbeg4
	 TJCPPX6fcc6Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC281C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173922335372.20739.13580278158643619896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df607819a8bd75794823334b841a2cee4c42157d4508f903819c49d98fbce68
Date: Mon, 10 Feb 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739223353
