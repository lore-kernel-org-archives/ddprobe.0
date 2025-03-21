Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4671A1DE8B4
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742528394; cv=none; b=dTi/QCxfX+b7YYatWzMMTgBs5i8CTG9k2bZLgvw02ZdjICEfC/E1BnRSdoxjVqeXe/kexHoMJmlpD2NIe/Sl3JZKgoY2umZVCluiCbSVsYyINTy/yeAtVRiRc7ekuSxpMobPl2KCUyv1u5pnIcyhZUYWLFdZameRJjFlglKN65o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742528394; c=relaxed/simple;
	bh=hxFSGdP4KklguRNAIwoc4DtDXeCPSod/d4uGppsZq/8=;
	h=To:Subject:From:Message-Id:Date; b=d+p4sO/G2qrO8nyHexCZbcqtFP6pNcnt3NB495yO2yG3IB4FGWHt8h9iIzMW18mjF8Bl+yZXwaSDRIWScaHHBSQA3jMMQ+PARCeO7EcGRjzsiR5kRsBpJh8ufOdmrbqi2QAlPFNjaQGqWF+a2pczHGJbRr4maP9FR5aFBPMd7EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckPaUyVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckPaUyVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B379FC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742528393;
	bh=hxFSGdP4KklguRNAIwoc4DtDXeCPSod/d4uGppsZq/8=;
	h=To:Subject:From:Date:From;
	b=ckPaUyVitAJS6t+3WsHKTtqFV1LxEwmp/uGZni7bqPPgtV+X0VT/czZpgVbKa5x1+
	 A0C7xqX0Db7a1549WziDwyCjRmeUIr3lLvIXoWlvD3L0g9d+CzzGS4hHIrObYcD4qN
	 LMsSll8taQNzEzhWxBeIM/YPqgZEvl299xssmWkF22/6Dh00+GgO+CK4JwmBqvaW0W
	 skVrfTdr6+OnuJwZVK+fXPym4J/LCL459Kv9+6zXueYW4NBkiNivc7KH928BFsd/he
	 4U8xd/JW3wOiCGFRW5P7OYbSvSm+QzM6CllXYgAhC2XszGxEmUqD6nF0C4Uvw1VsgX
	 1qJ6YQFKMU69g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98569C28B30
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174252839361.23098.12360412134405359787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16908f341783d19f492b5d5032bbf2c9e73b3241392c3957ef44b1d1adc0e4f9
Date: Fri, 21 Mar 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742528393
