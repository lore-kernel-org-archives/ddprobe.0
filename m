Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22401225D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759094394; cv=none; b=Itz1n+EmuNLDKlmkIXQrL6fAXgtjUjILAzvipZ9ooMdB0WRM9N+LjsWa+EKHubkIbc4m7Xz1eo0E/Vdqt7WnrCVBkQ1Dkh6Q3B4GdF8fChkEB7Aq7nIDJcQ0Xf1uULPxptIcUCd2TUGe6baHjp5h4HuHm7ks9Z0dDuD/05W6eXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759094394; c=relaxed/simple;
	bh=vUx+nvj+3Aqz/t8vwrdho2P7yyWYnqzr59NOS7q8Hps=;
	h=To:Subject:From:Message-Id:Date; b=sk1rbvVueDJw+alDUH5Qdl+BmkPkMJfOKVnxA+1D/KXmJCcD2/X+CtsaQq7TUcwhDDI6vznCV1Md/dHVCAl8E9xcuJhYbUCtSoCuv7OjUOqC0TkCn4Tlq4qqnIh5SzcfoaCnySRD8bquw1T80cU6GTYz/0GPHSMNst9C2dW1TRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yr90pTae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yr90pTae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0461C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759094393;
	bh=vUx+nvj+3Aqz/t8vwrdho2P7yyWYnqzr59NOS7q8Hps=;
	h=To:Subject:From:Date:From;
	b=Yr90pTaeQYkHvPgBnZItP8p+PXefwI2XTvsvzfoLp1ssNKSteWeyhKugqSWA8S0Pc
	 13uvxtDEpBhR6IGC1o5iKPceFZO6D2KqcknBjCKZFAj/zk/blBMUq3Bt7fkiaNN3DR
	 T5xv42f6w+XUXIumfjc6+uuZITyY/pbPZ9B1X2yjuT8oppqlENd5rFY+4MBf+kC8/Q
	 /ztH1YHvGnSoFHC8aY37Z2ezpklMd1KwJkghgxNTrJfFSigosVR8k9PZFR2QcjV676
	 0Y8SPsHyECglKJ4vSV8vTXTD+7ZthYDjOaxez3qRsYkPU7dYn2G5ehZnwhC/Vqjqh2
	 PKp01nxXXPETA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C46CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909439360.14745.3828606190927331851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a013d410294880c790aa5612c31b97412a785fb8af326c3d538a19b4d38c02e
Date: Sun, 28 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759094393
