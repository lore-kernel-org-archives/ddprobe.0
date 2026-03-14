Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CF52580D7
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773468894; cv=none; b=tMZGcRrkPs5yyN81v8tT8UeCD42RtRiP/xVh44UmtTxH8ZHiWZe5Igs+ZjeXZRT2YNGmN9mvhYOlDCyDDDIaf4+zmA2cIwRfL38YnBqBouY/Z5+fWILU3GA1cjcGg+BGDRq68YWU7ZGd1fcnvMF7dC8kiZaeLGC12FwqjLM12rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773468894; c=relaxed/simple;
	bh=Xrr20n0WeH4lmEVN+pLIaSPABaNwNE47Vxvxq7fxdVM=;
	h=To:Subject:From:Message-Id:Date; b=psfuCKv/zScJhd/s3iCTU5qaFLBv1XjOr+sv6hpFbsl6fBoKxxHmimawC3UCLOSa3GAcSQnGl33WSxSadtBmcHBLTrw0+svHJRgQUbcAyvEpTrWRIl186VKBYdrj+3M7vzWWXIoImebPwZmwT/VL8AZIFiAzQ3yc1p+2OPkanxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRNqUik5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRNqUik5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69AAC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773468893;
	bh=Xrr20n0WeH4lmEVN+pLIaSPABaNwNE47Vxvxq7fxdVM=;
	h=To:Subject:From:Date:From;
	b=JRNqUik5S7VdA098h6VHrPQyFDjXDFyZdLIlp+jXPze1z/RsL3kfQsHUhwVLtJPvF
	 Fx/kKwhaqtSTByGvPgq2WpzD61kMDfMp4xAO1xtAk9JxLAzALJEGD/dwJ2owYLiMrM
	 DYRk8R6jHxmiuTCWkpjOFoY5vdjcMQhy+qNo3nytr3RRkLRGDBTW9bhCnGSi+Lvx3y
	 pBYWA95pPdC96UlM3NPHloIm2hw6jtF86EAHsh+Zheae/9JZ6kKd5GXja295kn8yxe
	 YHAeu+wEdamA16Z0UNWpNermeMvK3KO6G6UKuWMTe1QN9OdBw1sN777UF/+y/JhRxh
	 y1pU4whZ3G/ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959DFFD88ED
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177346889358.9441.6312649851627018321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc395d53c84c30a7003b56988495879a0a719c913e6e7ebbf5ccd87043417159
Date: Sat, 14 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773468893
