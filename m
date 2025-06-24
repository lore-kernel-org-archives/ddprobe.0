Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DC62550D3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750795794; cv=none; b=BGx/Rrdfdu7mLG3HYH2zvGdLYJnVrocjvtgy/osRJAyIcKiLRiwFQoO2jhxJAZfZVHQJWw+XaidqRO7fGLjr/Mc0DgB8N4GcLkQwynsNO66Ypou2eFkprv1pyHBXN5W6r4h8iyIEc9hjUCjxh7A0Jvc5DRuTzzxlFEJv2ZQOOx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750795794; c=relaxed/simple;
	bh=OHDKFgG0mdTlBLHY8a3eGnz9pD5GRcQc9RvfDUvBeNk=;
	h=To:Subject:From:Message-Id:Date; b=Q46na9Pzou7mJ66+6TqjiMlcr4MsokCAoQ9Cp75M1xhsdTVY5NVFaDx0qUnUIbERCGw9yrMDiMXftE077c24poTkyAC6kOsi5Xp/kGDEZJk42OQpsKqNnzge/kmqF1LSnLyvmiHD+JH0z/6IG/87kxqRd2Y2bOYjJkw32p6HyXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTwR2p/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTwR2p/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31B1C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750795793;
	bh=OHDKFgG0mdTlBLHY8a3eGnz9pD5GRcQc9RvfDUvBeNk=;
	h=To:Subject:From:Date:From;
	b=kTwR2p/bYTScTSnj/i4xmsS4ZwD451aofaFCsrESUCxoWWoiM6gd9IlNfqXv/fM8f
	 xhymT+6ezs5IB8FOYM+kG5u0BfF7AQCUoqPu0okfgHDbyxy4qsdTz468kcQ4srTwIT
	 BgD2NXZY6vvODHJrBrpCgXKd2rBqbEa1i1U2dVwEoBGoFeK22DuQyd7/TtwEXIeLbw
	 JZNPQDASB1RYWc28gAqMP3+++gjF8glmCxWLzGOm2cOciBzVjDxukCEyMfhgMNA/Tg
	 RCYIXeWJP+xw4kO3/4YXL2rwUf9PlSbul36OwqpyZ30cSQn0BfN98DFo6m/oX9loBz
	 2VfIFtm0qvPIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFDBC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079579358.937.7622303720917113653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afff2eb704163740a5106769fca9329e347850a4ffd708759c988364bb5e332e
Date: Tue, 24 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750795793
