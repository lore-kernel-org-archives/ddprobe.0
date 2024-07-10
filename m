Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576BB8F66
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 19:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720641443; cv=none; b=AOMojwKxNMPPW502n6EyTFe8mxlFIr8uuPhzCg4LawH8OfyMiM8iQ5oSP2hY/E8kd/EUdlH6UYauEYsbf8MMKwWnCr768MGB5dyPXO3nNv34G6lpTF8MlVQ+aX5rE04kIkkw+hcRq1Q9qgOvBbCh9il0bDcRPzW+53F3DIcNzfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720641443; c=relaxed/simple;
	bh=/OdVNlbsyJwjkMeN4NTsPPQIJ4cKk+QvPE0rBNFhOtg=;
	h=To:Subject:From:Message-Id:Date; b=AoHEKMXMg98PSIymUkY2Fep2HqBJuIywrnbLgICNPa49lw5lPvPp2GTYVi6iWKki/tM9dF1mwzm/6FeE6MJgcFTVNUQNhQ2OJUKB1elL6NWG9l4craP0m/HUs9fpYzji6d2BT69sj3QzgNNfjhqkcTwxISZ2rBNe8NeJfivJ1oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsOvSoy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsOvSoy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D907DC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 19:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720641442;
	bh=/OdVNlbsyJwjkMeN4NTsPPQIJ4cKk+QvPE0rBNFhOtg=;
	h=To:Subject:From:Date:From;
	b=VsOvSoy+O3WVvgDS+RepM3Nup0vnW0UTkJxH0PHpfYyBY1QNe2zqIV4TIE8YLZzu3
	 H7fBgxueis2BFHNYkfNEMxdw37bwTgafp0eaorwfuMFCsee3AWV46tAlvzPV9TKu6c
	 todlZv90e5gxkx0QpkTj3DerKupktC7MqITxwXO3AYkOvjR09itXdHok3HUj52Ekz7
	 ufkchM76uLYI3QsbxX3ro4I5KZ3ZbAmKOllOA/Z+//lVgXd7HedVlpPOyLb/a6S2Qc
	 rMoL0eGK7s+kvyKy6Lt4TV/jKJrTyKBvFCqCzPpSml6HZoYGyYhalxQPXRuF13qfLD
	 vc3JqMAjklEwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A74C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 19:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172064144279.21331.6758228413022961205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85ef2525b0dcde480f00e210f9e5156578aa431b883f6ea565176e19e85cce9
Date: Wed, 10 Jul 2024 19:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720641442
