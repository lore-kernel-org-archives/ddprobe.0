Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2DC19D07E
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759528794; cv=none; b=MMHngtbMC1p3kmQbXdxMchPQpIVhNc4U5/4rDp/aqSnMxQN2z5vwV6pSKjsErvUW2lFy9ut+rIPG45IlCciK5Jwe/WahcGDnPeaRPblk9VE828rbLL/ppzbNTAIJbApn4IBQ0YuBFx7v48QGo1Qk3OdVdtoG76u7vhhagd4y02Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759528794; c=relaxed/simple;
	bh=3+Sihi3WxUAoLiSPsVW8S5LUqGk415ycGvsqlzTUbcI=;
	h=To:Subject:From:Message-Id:Date; b=saNsCY+ezfgszgooCo/JABleRS8ksRBsI1qlewArPFlp5DaY58Cj0jZfiIi7rxDF3A0Y4hhgwhp6RBIhxt3HKUIECMVCV/Q0qnMWj1w6s5Au49S9Xey6rVpH7IcLjHGOqeBNVGSnBIMM6q9xr/jfIU2J9ZAV0/AcyVk5Z8439Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiX6B6Oz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiX6B6Oz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1916C4CEFA
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759528793;
	bh=3+Sihi3WxUAoLiSPsVW8S5LUqGk415ycGvsqlzTUbcI=;
	h=To:Subject:From:Date:From;
	b=OiX6B6OzQBBzU/qyAcRuNq9+R1gNFzEKmqlr71atTTrlQ8tUpV8AvTzMFKsEwRflk
	 H2OoJF/ga/BAm0/BVcAYx9KJ42TssQlRiBjGRXpCWMEic0ifF8gwROS01hHXY/ojd0
	 19Katymfs9oPfg46VCcpFAG1CtKDKnnIUJvcBe3EYh3uiaOR/4oHpjQxsMzg/csK9M
	 M8IUubNtMqWySZgaCmCU0I1eETi2E/GDRduJIomvciZsedggxCbUVn9Cycbm5dYDLX
	 yUs4ODm9Vy0CXwungrzhcLj0fV3G/w4g4x+c4F1bUvwZ4f11zhUMVr+BC2ypncgMrw
	 Xofqh7CUmITSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF66CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952879357.28306.14560560570022816438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552bbe793d827a9f95b44e6ed33bfa99d9e26939aef08566d28f1aa72246dcee
Date: Fri, 03 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759528793
