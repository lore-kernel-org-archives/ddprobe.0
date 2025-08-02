Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B2C18D
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754123994; cv=none; b=kBiOeSOnC6eK+9beLqf8rLTgxd5EBew0mtBhu4vlkmryNLrHKJgG5XTRQ0J8MFcmwVcmcVY/AyhA5JG+Xi7OCiI8cwlmsxM7GhmGQAyQbrZh/JXLnQK3qRSbCVMMwZObZv3fSLOUJTdzu1DHRuwH7bOJYMRuX/Vnz6WkziJjzHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754123994; c=relaxed/simple;
	bh=vgjJIRqvPT6FnV9hNdpGoe7AMTKMcgvvpPmKq7D87ZA=;
	h=To:Subject:From:Message-Id:Date; b=Gb+kHSUEvhfbi2Fo91R5y4khF2noF6SdlHsNs+BoJE1k1hy8svFfM5oEcyXlq6yWpTFUun+be/j8ADMnwz3ld0zLQAJLFcxZ2gB3/dV43lJZScRAuyEcnk2sDAeSSpmAdIBiJVzexQg9Y7UJLTygi3J6s0GPlG45r/Ggovgm+sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJwsOSBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJwsOSBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E6AC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754123993;
	bh=vgjJIRqvPT6FnV9hNdpGoe7AMTKMcgvvpPmKq7D87ZA=;
	h=To:Subject:From:Date:From;
	b=vJwsOSBxpE2o7doFxX5ogdFxgxQVldEa0CjT/w3DnIBW6Ax4fI0d++10MqlsaSKYt
	 n9nLtxIHtJNQPPva93Pe5Y7XAIZho9vtnpLOtOiLXQTZqkIz1HnMKZyJzsfr/ikjl8
	 +J/3BVhSbVgk5zqi0fi5byCPApqk2JM8ibDTL/C39hiE1xBP13P+TErTmVsVttAP8m
	 zwxdBKJntPs7g+Dy78QgcjZsKAOMvJ4UuE5NGGL/D3vkHmTvJilALXfHyJYIAxdRwl
	 Wp4eia/X7yaprxExr9AQJuA+KpW1sh1rlT0GwLDpMxecoXiIdWUQCPIr3rgcmpRD+m
	 Uyp3J/IairyDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F39C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412399358.13452.13701471672635957408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb5486ae96ebdac7b27cc601de4bbd62808a0f85886ace0ff544e2538f151096
Date: Sat, 02 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754123993
