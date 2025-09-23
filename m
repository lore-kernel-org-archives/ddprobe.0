Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3088330E0E2
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758605994; cv=none; b=D77LohoQGNkUKVdv25ZNeVC1BOdii3jD3GEq7H2Z/84KpyiEC3dM8MWSULPssHK3dOP3kg2GORxVR20vpytk7Wj9zm0vjB0AoO5gh3mP/T405aNe0o3BA5w6ygL7GXo98bVlwhrIzE2DFNeV7gNCq+8ika0J3GC7JjBWzPO96EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758605994; c=relaxed/simple;
	bh=rIs1raReaIRkRQEiXPAhkNjz91WG/F8XzKHEr5U7NiY=;
	h=To:Subject:From:Message-Id:Date; b=F2R15HhaoUWVoFTX3qvh4Q4tXuTK+U+lQsiysVM7VxOEmhdkg+mNBikSuuFcqORO1BfCcbSjTBVzSdwQsHmZXu239NHXr1ZPfBaWxJyAA3rVYjRmfq12Wfvr1l9KK2XWrdui5DSyhDhnqHlb5bGGvudqOlFeg5mXN2J6X5d3i+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EO2dPtpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EO2dPtpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE4BC113CF
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758605993;
	bh=rIs1raReaIRkRQEiXPAhkNjz91WG/F8XzKHEr5U7NiY=;
	h=To:Subject:From:Date:From;
	b=EO2dPtpVpMKAeNK3z8HQEkv0wbBSLuwLEFGm3f+o+umWHYfhOLRf6/WZqnMx4z+E6
	 Y3AoYSfWSakt5TF/t+W+Z2m2rdVU1YLJbzPVo4Yo/3NbTADVk07UmusPd1LV4qslts
	 zGuzsOZRH7pIUPpZd9ADEOyRJigHXHoS4qNQwVkmtyKAMXBBNhxD57cn4X9L2i58a6
	 YHcmX5UzO4Ez+JszkOO+wtd1oQ3M8AENGo0Nw1nFhE/B0KTPagH30mQ3K53s86TK8u
	 vTP5q9nlaZpFy6j4TYFTn2fecCfG5PB1GzO3reoPePPvpnclnJzne1GlZs7JBr61Tc
	 BH/xsX4U4JGGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F173CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175860599357.22490.12662137690758070584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed00712d8917549080a4e684aa83136da851393e8631e3b4977fd503b80494d
Date: Tue, 23 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758605993
