Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DFC2D5C86
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749908393; cv=none; b=bEbHptcwvikibB6Uoe15wsybL++0b9EUqzWtYrzBfLo9jwBhdzTGlQzN7GIFGDm2OOg8TASY7ybZaaB9Ia+MoRaUUZ6K6zgcFLG4U4t9J/F5Wq8HGq3CcFVNta25vbrV6EEanQu2Rjtzp5XtDe9lvh164QPG5YvCGBx/9UqTcYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749908393; c=relaxed/simple;
	bh=iyDEkQGn6GgaiK5OA28pfTOtvw8yA52Fn8rImgGQizs=;
	h=To:Subject:From:Message-Id:Date; b=WaYId/LRcj406+McuPvjq9mjiVgl956oFJcWhi4MnzOK17GsPfF8cfiSRIMZ1BfsL3LMyis9Mugk8+LhsKWO3VDOQ8mBQkGe0D+D8TqPVMSK+INfJMT7PcvA7zUHBmY6+hOxtKB031Py0n2eCFviNbWhN8rCFxeomSfwDnRpNU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzNbfqaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzNbfqaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A409CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749908393;
	bh=iyDEkQGn6GgaiK5OA28pfTOtvw8yA52Fn8rImgGQizs=;
	h=To:Subject:From:Date:From;
	b=PzNbfqaGbxg8SgFhx2QLlwYi+dX/eTUoeFV02kFsNx/5OwRQaFpB9TSkoAB4bKLtS
	 yYZPsnsvy32OWS5vwPsyG7nb8ZWD1Xya5x3CW0AfYYKYkDnhsZR26DKSX+ZGKvH0VW
	 FvALcDMLGckQo/Q6HUJJXGW4ByoUy1hPk/CGCUEqwReYzcDkasxGVcr9wAuYfoPVk6
	 BSbnaahXS3qQSfRscsKa/3TaXJ2sD91ttWWb+gn7exSy9gKvAKlnadPrhBMPHUrllV
	 i0U8Bv0GVu/lYXBXFG+eCNVZTboLlY2VoGnZJ+0p7mIyobV66zrBuVSNR94LtbJyb6
	 X2nWXkJde4xeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C5EC71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174990839358.30930.7130003425171686364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b16373d80148dc3b289126a308590885a8387a3be2287b1fa3852e92aba0070c
Date: Sat, 14 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749908393
