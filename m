Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB931C9DE5
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749262794; cv=none; b=jt/9lweCN5+2kYxg0K6b++qHKKmvXIXDHil2tRl7aRpGkrIE7Fg2VQVPOv8pZW2g4MyDfVJxbepEDGaUkyq12PMX9kQO4MC5y6h24BkpKbd+HNSpCfBM5cZWfagMCUojNpjLt8q4M+LthzE6f5+fc4GNeRzu3z5cH27Wx/AYwN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749262794; c=relaxed/simple;
	bh=4J4h0xFIxRLHjjYDZKOdMA6fpWekIqhftPmF+tj+r1E=;
	h=To:Subject:From:Message-Id:Date; b=WYmyji39Mx3sBPRk/2/LCoCvhAepyNVhiFVaYOTk58gGm9D/T3aRl0GsFB9gspI4krPzJGsVkHXF5XrEOPhMGrpN+GKiDqm6JwHFBRXv45b7C1I/zoLnm+F1Qv/TE1i1meEvt+2QMJl10Y+6mO1FImXEnNItqdfNddGPLnWhVsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZrNh9X5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZrNh9X5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BB9C4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749262793;
	bh=4J4h0xFIxRLHjjYDZKOdMA6fpWekIqhftPmF+tj+r1E=;
	h=To:Subject:From:Date:From;
	b=gZrNh9X58pCmbazpiIvvZLICuFpMw/p2I9NS9p1Jrn0Z2DnWERv450XIpssr9AhJp
	 vcT0UOb2MukRrRCks2m7JTIK+m2yLUHrK7OEAsXBofjtqIkVMh+JvG++U69iU8fonI
	 NrtWyjxhrXXGEwMSzShQjpQK8qAkNwibe3Kju6pz3+Jg8Ar5aCnEdWoSmt1n1uEJYz
	 51gwKX/kpHb/5AsUQRv0kbiPZM8PjIO8xoHwzVGwj44ogNMORXoLFxw+N3on0eluOI
	 a6XpEtuFGwtfjbqlHYjc4L04RKkJnbKWUFgnKhhoTnxf2HxKYPYrEw/tTy+zkFjrk8
	 u80JjZ3H+v5tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2ABC61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926279357.25170.1818553227900559618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 032361e1a8704e9df5f34261f31bb8dd4504333b61eb76ead329ba057f5ec0e4
Date: Sat, 07 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749262793
