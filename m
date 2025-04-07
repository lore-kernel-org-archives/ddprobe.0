Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E71D192D8E
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743995994; cv=none; b=C/1Tw+aUmk8CdcJgiu+wU+vXwpP+fWgKIDEsEyztPURb3LK/tbKmw1MkcECC1G8zFG025PCVvasJH35gpv0wTZEJ8ydL8yayKQur6uoQ8zjNHyirkCTbVO4MvUZho9qdQKdqlUJGuxgdiqIYU2XlqMttXwGRrYiqQiioUBRDjEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743995994; c=relaxed/simple;
	bh=zAkxVUgW7pL2JfyfxMVKxzn9rlCy7j4ZWkxpBCLBTAk=;
	h=To:Subject:From:Message-Id:Date; b=YB/lS41DOAOGbuAPwn1nZ2SmbwJKV8N9t5nU66wj6xDKr4XaxHMJDIoSbtIROG9ZeSC6OPoBq8Yly3BuYMafWfWoAgqFslgEPPXBm/df0mAm2yQES77jvjckewd3PZ3hDhnqIR7J1jCIRpJDf+tGVmbe4g6KLe9kqx2Zpg7G4A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHmIj1th; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHmIj1th"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB776C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743995993;
	bh=zAkxVUgW7pL2JfyfxMVKxzn9rlCy7j4ZWkxpBCLBTAk=;
	h=To:Subject:From:Date:From;
	b=BHmIj1thzq5Q2GfnTsAj+9go6sXN5uf2rcEXb+NN8aNKiMue7uUhVfwQELeHC+fL1
	 m/2U2L1dTdr+fBKsNM0DTE6GTnyMg+NNqf+pLnNxrzBu39/HXXgTRnAp0zbj7LyHLs
	 ZtasULHi+FvO/T7kWOV3sPggdocOMhGrezgoJi/NiQLw4Wo29Et9v9Rd77rH948KJD
	 XzTc15M7rVgXGHgONKH0CaHS8rTjB34kFx6+6IPn6Agm5bgK1zoxIsl6svZlhKbwV2
	 2l0yKwN/S2Ls2EPUvXpzFZo21a97lPv9viwgTnIjA3L9M8n/vfED4Z7z3wHgLKzptE
	 xUtJZ8YJrx5/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4442C36002
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174399599363.25563.11255341944748458990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef1174385ff84d5185a07f0c05956a5eccd02e1cf724bab4814f191837741a2
Date: Mon, 07 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743995993
