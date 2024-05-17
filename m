Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE1EDDCD
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 05:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715924543; cv=none; b=tKBuJHP4+HxPUajSUiQyqYGWiDErNyerfJGcE8HONOFyzNiwAb0KKsRL8UPFGH1mykFfRXuALSWw9KrVAYNi1X4Kd4mycU9Nv4VWtXXhAL2p7eArBi3nZtEXZMfDGiWhEL1mtootE0WSNmSqpdjmOuEV9o0MWdnM+KQXzvY8DsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715924543; c=relaxed/simple;
	bh=iszXpugKq9LbQYgl4lOxQL2ziYi5tNG6kmFUkbRfWw8=;
	h=To:Subject:From:Message-Id:Date; b=Co0a1/wef9bpRzOPr0QxYEyg+exXRjd3lhbIb8yc4hVYApUBBM+RLWpbUtilfp4jYHBYoPuSoVV3rNqmWvay9tGFsg6nfo651kC/BjlURBt4hblyHnolPswuscxyGv8u7gVuk6Gf285AHqiZjoUdGU8KqXMVycPmwnBOfn2bbng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNtBH3MI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNtBH3MI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E30D9C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715924542;
	bh=iszXpugKq9LbQYgl4lOxQL2ziYi5tNG6kmFUkbRfWw8=;
	h=To:Subject:From:Date:From;
	b=tNtBH3MIfjZPSoTJK8iHlN3eVW8uXLATOx8/5Y2lRFrssI2/MuKU2b0hcFfLRYlfZ
	 ZLWtngCVwj99xCiQyBGP4BOWvNBvnExCT/d/Xd6L/BB2iyZaHv9Qf82sfKX+PL2UAn
	 mxpUu+jTdW90tJEOCiyhJW8INunSYWEw4fn2PRLHkHxV2lALPeyCSXdpMU3/Z6D8Hp
	 s2wJCS70//EQ0SYwK75a6MNel9Z4mfza/V4eI13j+wJq5kBdfazqbJB8q8cZMz203l
	 rooV2cjfl9cvm9S6rftFVNJAAFjMxPL3kPPsXZQCoUTsvACGMZnU8wGHj6e3F0Lt+2
	 xg80VwdXYAt/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B3CC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171592454278.14176.177916056428970299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e34604fedc5d43ad165f681454872036bb355983e39dffe329328b2b4f0be44
Date: Fri, 17 May 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715924542
