Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BE626AE5
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782212794; cv=none; b=C5lXGfal4d1FkLynLUoikI+wWdh1eUPDYd26ycibwA0U3LGJ+74rBPdXUQOCpKRPwSYTnSoxv0zNHsp6bXMEbD9p6V9p94dzbPvMyQEERsl+/Zw3Ng+SyaHrRyZEjZo8HIa1tAadm03tyMchztSYAvt05UFNhD5NUcuqrfYhAmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782212794; c=relaxed/simple;
	bh=xJIFA9f9S7Iw2uY/ds4vCM28aX08uPa1Of1EYoQEnKM=;
	h=To:Subject:From:Message-Id:Date; b=aw+AFa1W4plk0dR2Ut1EqcvntM7/yrj3d4nz5k96vCucd3EG84ROdSKAwBy0C+oP4OyjAf9SEZbm30XVdugIqv4ulbDJIXOZWN3/niU1yeZBWPuYC+MkylONaLli8nCtRK4ivNPMMxjGjbAnCEkLFDeng8SN9Zc7z9p3NL0cDe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+Pud/V8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+Pud/V8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7872C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782212793;
	bh=xJIFA9f9S7Iw2uY/ds4vCM28aX08uPa1Of1EYoQEnKM=;
	h=To:Subject:From:Date:From;
	b=N+Pud/V8HPVVv4XVz6n6krLJDUKPCDACvHShcec58DXCXtGMes7PdPqDTcs9BsMcq
	 bWon0oXFLiWsU/3sw4MPMhFH9GiquA6ygWpD0JXFSYouPScGXLKlg2Jy+7RfTu9osg
	 ewKS7knJt2ZFj0CgukfKRsD4PnVhHWku/TXezQ28cTXE+/GiPqdAMiKepPdcfQmM6r
	 ajtV54qop+0/4Itt08QufUtnnyiqyC7IaQeAzxi2X5ZDCdi/IVoi7dwmrkqivUsWea
	 +17O0HMHBuABR2CkTWzUoKisjyydrT5xarRNDmnlKoY7MRbVQ/tC6bk9Ey/ar5x+BG
	 Z8IOnOxkw64Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9A4CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221279369.31219.4111295617788978417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac28255fd376accbdf02b850ba2f8b1e6588705e14bba590bc4d9f6cbdd82bad
Date: Tue, 23 Jun 2026 11:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782212793
