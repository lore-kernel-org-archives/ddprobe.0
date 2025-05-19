Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252B0286D77
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747672794; cv=none; b=BHJ4jqM+h5cQed25JzBmTZJFIjtUrswopD/QmFtAL7p9qSAlxbdxCoHTZzKKV/ZOq4fZxoW9gMXN3+EcKxPqp9/qZoTTUPU/Va1VYkGQsel+z0RsIupGqLt4Jad7fzO6ahI3D55M1Vrz4uroRRZt03Qd4VfieDCvfW/VcnnOL/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747672794; c=relaxed/simple;
	bh=1mYfirL3AB8+WyOWF8xVP24/d7J16cGJzzpLYBRKJtA=;
	h=To:Subject:From:Message-Id:Date; b=k6oAegcZjwACVfdp21j3U2ODyLQ7vTYV9Z0IXHgJRwErQFNj8dUYdOn88P0vSTmDBANBVRoAYfLsbbgSJhyJcSnQPfg1MZUgbH2fT3+7VUfSPf9qB87C1MlfEUVgp1Rv3RdLjKm/xUVHdqUJadt/3gsdv0SJb9R5gUn6MWmPiXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dY/bHJRH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dY/bHJRH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0065C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747672793;
	bh=1mYfirL3AB8+WyOWF8xVP24/d7J16cGJzzpLYBRKJtA=;
	h=To:Subject:From:Date:From;
	b=dY/bHJRHk9EylzmaGlLbWPBt7d2O0IqRXPawiPk7V7K9oWuYu8VwexlzVC6jVewZC
	 uTBNfV19FtLb7iMBrkT98DeQ8BVjCEXxOKwNus0Ep+fccElA6Ubxf4fUaE63WO8zjQ
	 YjoYIFUwpjcSdkFYD4rg7DRlMdrLkfy6hbyXyoAG9bkHSjrc2zPc/2r2ElKMz/VS+7
	 3rmxMjVsyfczqreKLvVIOHrufxtYJhxpOAdSMOi2fHhNMT/S2MVOCDSh8KW/2fxPIA
	 vhtoPZSCNfgGTOd1wTKyFU435zDc1zAC1Gj83CeKuOaNQCPSXD3E9m6HDn9z3wg/YR
	 r/h98iIAaw+4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D9EC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767279358.1686.15613814278125924406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0150ca010006264ee5c4b72012d0d14595a029233508a00c8c6c55c6c1332e3
Date: Mon, 19 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747672793
