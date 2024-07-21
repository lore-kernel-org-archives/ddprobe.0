Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208B0322E
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721591754; cv=none; b=Kk5d0Urj4w57LMRTNi6vCSk0WvhXyR60OuBGveOgy/CcQGOIResx9GtFJ8y5J7J24XcdMPd3r4Vqjc0Qx0h0dy1cPWy7nzdx1gVf5qDuHtse7Xx3sN+Gc9U3TvPQZJt50iapiZcrKmTtJNOaS4jjIk3zYoUj2OpFeHKY+pJ6+RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721591754; c=relaxed/simple;
	bh=y2VYrk7yad5EJJ+u7dBCZj3+BpctB7DJKBAcu8jt5pU=;
	h=To:Subject:From:Message-Id:Date; b=uu2r8QHxQnQJ83d9HvvLh5a+QRS6hRmxnrt0hqlGiij/Yn2om/KqwwqgFL6FEgxIn6hu0v1MzTmnTgAoTbUzHE9xJZBJpV5e7p5FDO7fabkLL9m2jZWwZCG0DKj9y4aRL6DwoMNOY426lxQgDmafjLDsfTKnwSJ86pRfoJXL69s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOmct4lG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOmct4lG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A672FC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721591753;
	bh=y2VYrk7yad5EJJ+u7dBCZj3+BpctB7DJKBAcu8jt5pU=;
	h=To:Subject:From:Date:From;
	b=vOmct4lG7iy5t8v1SU95Wdzl27oWtG/ysCydoMpn1UoLeKONhsGsEsmBRuyFz+VxY
	 9LIVyXMEgBdeYKsCVOD1iee6je9cUVnSQ0YGoZpko1PffiqUY0PfiupQjPUj4gSQ49
	 pD6GOYU7h4rROClKtXGlDd7kQHqLY9d11Oi0YpDD7D7wMn6RpGk4Q4/qNGIJ6IzUT3
	 +rRY9hJf8uSBF3pVDql6bbILyAy506P+ZobOVPfDM8lgIVPPbf3L4ujfwa3oTbQGHy
	 JGDIkUcufR7MMLlKWHClU2g9XfH9C+hkBX5ovj/IC0Ds6zewi6zbuQ0dUQyVQaxw/Y
	 sGUkQn1RVTgIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE3C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172159175358.25819.14722462617003610015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 903897945940a5ce0e47c3ff678b5d3ffdf9556e992b997ad31307286d8465bd
Date: Sun, 21 Jul 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721591753
