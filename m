Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBB12E8B81
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774795494; cv=none; b=NJcWRJzsLLx6RY9gC+YCruVyJwnstEml+yZYJJmo8kSrMF2cU/YMITCEvUntt4OgkMZ/5EQDp5XMrNmErNWoBx7p5Q2pAXuvaEcTWPToNZpzKiKU9O+1RsfKThyx2HXLnUObSB9qo/AmCwDwDHlsoj5CX/NOW7sknBzNkZ0Tcrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774795494; c=relaxed/simple;
	bh=Qi5x0TD+eqhum0amAW3IZPe9aLWV8Sb/bAPqkVPl3go=;
	h=To:Subject:From:Message-Id:Date; b=WAmorqglNPBPGrPxFRSiXHlvEnWfM1dxcSnEqOUQgMFLhNxtfOboAR0iVs+4OCfeVONFWSiFyZTTQcNi5OmJxe871fXIMZMNiaSpvGTW+S9aF2aU9ZzNXcDO3DTP3Akman0fqOLUotZuw5fWoLLDWkD3tQfWH0B7BxXlwTvbFf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Awlmm+Wq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Awlmm+Wq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA867C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774795493;
	bh=Qi5x0TD+eqhum0amAW3IZPe9aLWV8Sb/bAPqkVPl3go=;
	h=To:Subject:From:Date:From;
	b=Awlmm+WqnMDHo73KrwQePOJaAIUvr2b/ng5bdF2LrxdAuylntEozngmL5SvrpCZ4+
	 IjkeRBLGayNZLKtmq6TpLPuRU97uaJFrRsVano1hgcpRVxKt4GP0Chk6CWGB3iCYI0
	 HtkWfoTqx4TCZ+rOANSq7tgmsHDEOZVyv+z0iDGquXX2mSYBrv608N7+1qD5QyU6z9
	 RUqoiyGRJc5ibpfG+44uiD6qGm3E3/skUCu6GEfMngVDuwQHZBIrzyQocjog0zTFr9
	 5edSWjQuxUFSPoYeTPp9q1JtNxd4oKYOvK+TiChESdLhLOzZ8K7JM0s/ztHltVRQkn
	 Hsdfn+PIceAuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979D0F3D605
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479549358.5700.38049540258134524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a15d140e514a3df260fda343556eb6edc79cdd1e2a4295798dcf0668344641e
Date: Sun, 29 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774795493
