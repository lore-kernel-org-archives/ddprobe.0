Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325CD1E1DF0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749935994; cv=none; b=Y2hByEQ5PRrFLbcnX5dhaBtSoWNDACTLMpGKR47MWGCYS/Jlqa0KaLq06fEpeRhaBlDMTTMoNFlMLuhcQPUpN74XIUBTzrcsqLdQXQzR5vAVsmNVnZO/85Rwg8Wmem4IvPv0wmLLI+BAjr4aTAf3VZ6dv0HZTHqJqPM3+NJ7nu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749935994; c=relaxed/simple;
	bh=fEl9g1Nf1P+898FSBr6NmX0xYazKs7GE3+BxrJt8xdU=;
	h=To:Subject:From:Message-Id:Date; b=gmvm3iCrDtjJppBiOKk/ix2TjPqZQgzcL7Ozte7C4SFM/DqEL+si5Epxrwtnm5R3JYgKwApL/Yb65pC9fDRyVRX/cPVHAJVj7REEkJh5rjbQG9DM6UBzteFyRXUmCyEaHB5u3Lop/qU/r2BW0gfURf27FIcOcsGkDXJRbYmlZJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1os5uFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1os5uFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3761C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749935993;
	bh=fEl9g1Nf1P+898FSBr6NmX0xYazKs7GE3+BxrJt8xdU=;
	h=To:Subject:From:Date:From;
	b=C1os5uFCe3TbJWAVp1QA79N+aCKvnUP4z1AbFCwupXmDf1qZ0EVw6yK5f1xejVUEL
	 PRzeFU6y0foJD/VdSv24f9pp7gWe8AavK9PD3q1EfwbmDNcBwq9AwIc+NwZJHvP/SB
	 1kFUtsT1YgaNo589kck6BzNGoUagZQIiV6qjMqX9TpMA7CuUjdGxYKc+vGGuQZ084a
	 +ewqqnf+CM4kKR4/+1IPzF6W4kyluroNwnR1A9X8O2GvxumkQ8aBe+/sKg+8eNRs/d
	 oGX3pKNEWBRJjDh+SKldv+kpVYyxPT+Ab6Ubn6ciQ2X2itTnbTmbrInWmiExKziJA3
	 hNUJ1Qk6Fggzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F814C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174993599358.3372.1244412968897491880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d318a1483e2bb9fc1b320ee06d6fe9be3f0c780966d6432d664f662545316cf6
Date: Sat, 14 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749935993
