Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6EF264FB0
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747828794; cv=none; b=IyCqSxKkiJeKNwYWcxYRs1/iVgGc9hxer+xrM14rvc9UxCh3Ky7m0CfuDINSG2jkBA4/r+N3EdamFsJ89+6g9DwkGtUe1c1Pd7rPwrmBphnM3tRVB/2ugwX15Y4QXiNcw0MNSm7S6nPDdT1lQsKW9wJft0UaENyFIuMl+KmCFi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747828794; c=relaxed/simple;
	bh=U3lCjxCHj7FHi03fnQ9E1IiYLf1ZGi6jOs4I42rmujI=;
	h=To:Subject:From:Message-Id:Date; b=q8Thsfuk5oDAsubo/GEEnGVFq806PBcpjfQIzpSNsjpLeHWa1AWe/idnatw0XHYZ4ViSv1BOa/adyiQUDzV1lSJyWz1Hidqin3TXmaSFA+w96eE8ng1yBKk4OIiDKMaDbTP9ckAQ7NZEcFq5fDLBXkO2kuco6cJX6MeILa4aBBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7r+7fAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7r+7fAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA11C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747828793;
	bh=U3lCjxCHj7FHi03fnQ9E1IiYLf1ZGi6jOs4I42rmujI=;
	h=To:Subject:From:Date:From;
	b=Z7r+7fACF5DoK0vb/lyn4R0dRj9rPyDtSlbGXeXewD5kA+G8Vrf342sq6xqyOCeKD
	 NaJAV4D3Od/RwmRwfJ2LZW8WEXIBJi6wfR8qR4mg4F8pNEb7MNQOkKIATTFtlKo3Pa
	 sVhhTD1TU+gD2OCLkTLZmz1xGJMv5slJlJ/7ho15WThGbvbmuk7iclttKAKqrbpWVS
	 WR+ThXbnef8o4RWmL9x7bGMuYDi6UdDUh+P0GBgUtDfWD7+qvo9FEDuAgYm2Q3+9R8
	 UEfAA/QXJ5WD2f36drg+2Ph4DX2IRKUqdiTzbfWNbFWETWT4QInjLFSLNCn05QRLEG
	 B9P5ZqSJEURMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED90C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782879357.20305.17769436566473926938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c7a15d25227a5cf3f45cdcee571c9439b6508f91c817279df4c8b13b3df8e9
Date: Wed, 21 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747828793
