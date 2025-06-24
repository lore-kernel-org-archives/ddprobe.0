Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8271F12E9
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750804794; cv=none; b=jScrowrdhBf4XmIf1yFy3u4t3WhybOSyJ8Yh92wBTZnPK1zANeFh8kcS0kgCeSmz8Tin4i/6flSNQE+JVoNu6H/WGxRjHWR3+b0sRx70rjaoSYM++F6F/xlobUZijaaQIITVKtGmI4NWOBfKChwKf0lpDmwusj8DsWmI9b1QtsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750804794; c=relaxed/simple;
	bh=xMBMXuE9hH9ddYR3u/tJZQ84Tu2ChRC/wy0c8KLCoA4=;
	h=To:Subject:From:Message-Id:Date; b=OMlU755lSftVpwF8JY+BPdeBofiC6/CJWjkuXk0wdyCt9ljKGatvkKtLHDx73PnjpAROLHsrBLdDq8tZeu/D+kRyJ2u/tlxZ07H1bOCdUh+qhAK+QvLERy/wgWiTA3SXkI+sqixyutpQIl1YPXs1J47PnLTMtD1Yrs/EX4cZbO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hN1JNO4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hN1JNO4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06FBC4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750804793;
	bh=xMBMXuE9hH9ddYR3u/tJZQ84Tu2ChRC/wy0c8KLCoA4=;
	h=To:Subject:From:Date:From;
	b=hN1JNO4kd7FFDrWAeBsyv7pt0YyZeklvlPk+/V0v/X4Q/i0f8jVTEL899srs67V8r
	 m4ofr/55D8yW2UzZbpr9b/DXyR3Zi/Xox9gYESqkPIpkqla8J/zGxOpJuG8HPicE26
	 6G22K8hFAnd1VSDLYtMB5LXmUQaDZshDyjE7wfn0kPKb/EvGoRnrsuRapPX3XsLy30
	 4nebyWEcb0brG4G8S0swnM0XAsVuvPsC3TFTBVmLOK+thrKoLtcFF6Zmyppj5mzVXB
	 RDhwCTVSFxdT8wh0nwWVQcpVH3BIU/vlSlhmlwrtb3Azqu4QMyGfh++woZjMb7kO3r
	 /onFqD71GfS+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB4C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175080479357.20580.11004060674574839539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c2ee1d83bc752764ef6b3302fc535d96cea03d0eb3b3e658d35b554b6e225b7
Date: Tue, 24 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750804793
