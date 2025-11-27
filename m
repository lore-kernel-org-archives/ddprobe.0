Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28384296BD1
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764264174; cv=none; b=u8DgQxcZZxWIR2WGicjz+EnCZmCKcND/keRlPX29L9YzlA8Pvgy83Bj2+HoRiwf+8RDkdTxuaZ9xr1fnrDg0Fq3n8tcB/j79GdyHo6YH38MRJYAeYNunRHE0qHcgLl5NxDEbm4Ub+HyTeBqOlPyRfRHQqjYjMgnJ2Mwfb57SYgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764264174; c=relaxed/simple;
	bh=+DYXH26iyD+Wyqg2nWNrcN2YwQf3NzZArwQrkBJp5BA=;
	h=To:Subject:From:Message-Id:Date; b=BCIglBmvCPoS82CgEIlbmljy1JuLpsNu23T23WpjDTWeHbjydoF/SGCxBh8fPlgdfskzKO5yL4+nRV/loMPZRHPStD8cFUx3sWlYmxO3VIzWT85LaoMrgHEIJDETOUbzVRC1nRg2uUmvnUpzqvdgrBWrh8iGI8Hhn5C7LKWZzys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGZ9uG0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGZ9uG0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D55C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764264173;
	bh=+DYXH26iyD+Wyqg2nWNrcN2YwQf3NzZArwQrkBJp5BA=;
	h=To:Subject:From:Date:From;
	b=EGZ9uG0qkVtTDOjtX8X4cSGpQ6EcAVJ2awGULNadeRIzfgMliNxfMqKhtIz76QqFZ
	 AZ1hxRRLipO79gm9DpJoYO0tqJA3T88Wsu6FAwaAFK+yKqXElVzckl9lFPr+3uMDQE
	 Kt8QBV/j4IqSBfJwBCUhFqjrFL2DBBPuqce8V5oMTs8Ye4tsAmDnLYGsdUmh3zEfMo
	 E7uLi2dIqW+YhCAUeW2QiK5twGwe91X9N8hZVj6ljZ3swFa23LQW0LJ+l8xQdr1ySm
	 4fWB9YtvgfRkFG4dxXUMybXYf2VtYTk4K4iOX/3k3FZOCAGfv5XddG+Um32UV9fdhX
	 QensxTOPKMFKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9300ECFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176426417359.10154.7681031307776055177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ea724a2990395990acd194b2abd9de25262d278907aeff28e48c1f5ce33a136
Date: Thu, 27 Nov 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764264173
