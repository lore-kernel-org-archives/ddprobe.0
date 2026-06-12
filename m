Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588193D7A07
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781246194; cv=none; b=aW3rc8YRICLx9UMk2B/+xwQerPtltad8DX7w4cbiY7s2Xgaecmfgvf4VmSuLs7ml9L09Cd4YDZgcE/p/Hiea+dfvQC1cjtJh/LqnlnBbyisKAkNizVVj+GUXV9pNWYV3i7TywXCn5i+ONgQhNO72h8fzN0UC+YsHf0XwpPNxeCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781246194; c=relaxed/simple;
	bh=zxppHDpYuAl/Z9HzD+9100OG5uIU6ZHfJVrnieSt/X0=;
	h=To:Subject:From:Message-Id:Date; b=N8c8EXliiHM6NABVbr1jO/7vgkr0n9sKoulD4jXLhcSsgMgDwg0L5wSOuhDXPCCkmbaRU7eCVkvjdJnR7UF1Ib6B4g0+LbcjhPtKx6f2/3Lz2M2mrXm8P8avFUG1xIGq8W824UFzr6VX1f3difOCvFA7bXuvWKkobxMup1sSPdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWqZ8Aak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWqZ8Aak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC1B9C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781246194;
	bh=zxppHDpYuAl/Z9HzD+9100OG5uIU6ZHfJVrnieSt/X0=;
	h=To:Subject:From:Date:From;
	b=CWqZ8AakXofjVTRiTElu3zKtT7MjlbU6hZMUJMnGGM2/zRpajyVJfaZ1tBu6ncUAX
	 Jo+6RlPpQhw5Wq8Beh69TvRqoYCRWBujW8Ff6sf+oC1j8xm526Re8BIc4HG1JgDzai
	 sToIGJ+ryse9P/KgnE5g1xvBms3SFwpvbQrqI40/1/qcxVXL+n9Cxr3kt7buuCJZwG
	 0ar3dSMDDl3t6JvQ+TBtbICjGTDIG7vrdOJ7LdsdY+eX3wDbzPO70pcTuQRW6D3xS9
	 GxWgy5dARifFnvllz1yFy618uDGjdN5TZIx++FjvCcE+Ntu+l/BMiKriuki5uj8SIc
	 AkfUUVty1AtXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE2ACD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124619377.5969.16689121001853254013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c623c6684606ae377dcd253f3092542f411be41587f3a5bf132922f42e3742d8
Date: Fri, 12 Jun 2026 06:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781246193
