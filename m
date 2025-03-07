Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CA019CC05
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 06:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741327734; cv=none; b=WaLAPal0qF86V1G1RgsKnBn54nyPAJLr5bAcm+haV32nArZU4QNkyZ0Rn0os4pG33JswL/okDCLWG+br9sIQab4UfDa8bvEFSyToqZrjHtm9TWbe4X2x8QObkou+rnkdqfexBMdvaEtpuMwFHNZEOwMHYNB8l8+C76chqxV2+ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741327734; c=relaxed/simple;
	bh=Mp8bIoGqqSZMu8xr8pNWetroGgIpIelkvJWELrQ5o6k=;
	h=To:Subject:From:Message-Id:Date; b=Lmi5GXIppX6xFA+PFn0Ef4GZ0LDk5Gb8bHYgzWRQGNeN8P4giQYnr/bW2mjfmnsHmIbBMW7lvQGQbBDtvavJKWfGuSDmlyf5PUKYelMysec9sNCDI9+0pfymf4mvVzf1iImXumbuWXfO6ejo/1e7UpB2/VHuSpraT/lNhnS0ajE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AY1Jfhy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AY1Jfhy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A34C4CEE2
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 06:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741327733;
	bh=Mp8bIoGqqSZMu8xr8pNWetroGgIpIelkvJWELrQ5o6k=;
	h=To:Subject:From:Date:From;
	b=AY1Jfhy/NQYqglBI1An+CirVx/HOBAvMxz9gasmLTRTAyfxjFESOxubbeG0lRAC2s
	 NRlUVdp2/nB2ToIGrBD6KGmIjKIpnCK/ShxLHNc661Nf8BfvYn3vjwOKTyQHS+4oeM
	 /YgP/iK9E0VK/Xpi2fM5NfYrXzTx17xr6RE6Rmt9SZNlHZNbXe1a/LDXP92X6wknBz
	 nFEgTn+TBoXI92b0GSoQ1bRZRmjIp9xFlea02TvgJfF96bxiqhZbZciHFViOAJJJM5
	 NCdwVVLLJWG5EDcUVElm6U1JuMWO8p2yz7XzJ6rd6pMZRDq3Y7cSjb0txk23nYqTQu
	 jWk5pQCa5A1XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7D6C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 06:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174132773363.31546.17536777889503975528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7c871464c077b6513e1ae1d8559fca8bcf4631a219bcfeccb1d0f01d0bbec7
Date: Fri, 07 Mar 2025 06:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741327733
