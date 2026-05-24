Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8AE25B0A9
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779620554; cv=none; b=i5/j4uObLTfIT/FsZSv1cs8rTPe12R/d9D0A38I55Seyb2/9Abuj7L3OWyzY6LIa7PGt1hOfMDdr7jCLeZwdPSGXvZuagLrEmzgg8TdQxw77QdzYR8AC2pPvk7wf7hQ104k9sGE6LgnkdlGAIeYvw7eF9qKBcg8JGrdEmryWhsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779620554; c=relaxed/simple;
	bh=4Ntrd4aYKiV1S1D/HxD5JKWoFrmFzd1/oL8yFzd83VU=;
	h=To:Subject:From:Message-Id:Date; b=u1hOilWsRWn3KDdy5xwqk0yo/CKb/ygNn5RHj5FIDxw8ITqHS2CP6JhNyJx3IoOmjbKUP9p2wzuaROl2ip+8MP1n3CJW7mt7ZYfezN8lRCTXY1/huFCf8Ks6A+Hnd9qNSPGTG6ZKmGAWz8bgUAMwgx8rJrU+3EuLEO1JANKBXTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRUtR1w0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRUtR1w0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4286C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779620553;
	bh=4Ntrd4aYKiV1S1D/HxD5JKWoFrmFzd1/oL8yFzd83VU=;
	h=To:Subject:From:Date:From;
	b=NRUtR1w0Tcy500hOPCMKY9HiQO+hX0Vs32qKAOqMhDuTF/CaQ1FB96colWi4e+w/U
	 c+kzaqkjQZcmzmUptlRDLRBCwkiCkQrfNMFtlv3GOz4/ZshupsJN7VZhnLn814m7om
	 Z+OcpFtVWI3yo+X3200OJ0UrhdL2uSJf8gRYSy9H98zEa4FX7U9eQcn09M25DASMxF
	 YjkQpz1DkhSLXrPHt2RS/XJI+FObaUXewm/c5LkO0BgM3jiKwaVhcSZTdyIv77ii22
	 ttui+2KPsg6w11AAcFuaWAiiRE9vdGimOpWjR/QOryxXfnDT6CrzeTDHKcl3azjtEp
	 PLMhLs00vZJoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6AACD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177962055368.10847.5960987773724184238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fab7307cf0ccd984ae2478f200204ec810a79adb33630de75e35d2f7fbcfa4f
Date: Sun, 24 May 2026 11:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779620553
