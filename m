Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E84A370D77
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778169454; cv=none; b=c4T02Lzimz5Dz+CuKed+kTbSiV+hEkg+PPl8X7fHFYGBTWRlOqlBkvQEZshPd6X1AykRMhwPTmo43wYG9ubE8YOzudM94u20wXkXcIRDO4xNHnTILpQKgECwUzlCw/7gOiKLUNGXvLCxZQPiQvt9HS4dbHoK4lO9qgKPqXCITtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778169454; c=relaxed/simple;
	bh=iH2/MVRY2fUtzGf0sg2939lIxC0x9IKwyFxH9y6czrA=;
	h=To:Subject:From:Message-Id:Date; b=LQZXSZRs0Kl/EVMH1GyV5v2mUXD6lh93i1mzceguAiKqlpDgNEqNTQJM0S+RhI1dI2k2ZnbdMSTFtbLE+Bv1LsCWb+hFAzNrg+riUgroomvXqpadlwj0IdXmuxNtVTW5QWhObVT2BepAvqkd75PtVmEiVdrAkyIFCjKuq22viWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EycjPz8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EycjPz8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0C0C2BCC9
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778169453;
	bh=iH2/MVRY2fUtzGf0sg2939lIxC0x9IKwyFxH9y6czrA=;
	h=To:Subject:From:Date:From;
	b=EycjPz8Ijg4qmXjDxXJd1b+kNzFcJXtPOneUumzMbYKus7f9aSuj2ZGZDQMPY0sVH
	 IF96fC6dy8LPMS4m/SF4cPl5zstPjYbWP1YVbydz0mEcX/aYZJqAF5hI1pdQzjffsV
	 xj74kIVNVR1lqC0Z0N35itWPQ7lda/HEn6EsoeEkXZPHV+T1IgBZtovFZnyIClv9MD
	 ikpuCrfl8akYr3MQLh9rVZSBksyoe1UowNmwq44FGz+MID4MnuVIl82IgVUVAuhn86
	 8mvaUvEmkXnOWuavPV4MQP2zNxqN6EZCfDJZTGh0HHonylxwVaEuvxWCMr29WjNQd7
	 jXEqNiElb7CHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2BCCD3439
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177816945370.30440.5388967595409952695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19671f212831e21b60ddab00644e03d55c4684117363c7f47e51bb910c7c5611
Date: Thu, 07 May 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778169453
