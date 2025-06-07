Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F591F4CB8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749335994; cv=none; b=NMz1rvgTFFLQ0sXPk86Rg40XjAyEDDNHa+fMaFQEBF76xCgl8Nspl200rY4u94bozFH7ELGyQWttbEWxel8NjKE8UtPBEJdSR0vdDNwn08wJbYp2nxLplBTswWfhDvHtrNZXEaZcmFLV81eNUzur4P+YuvH0AvCBkAgAnCj8Xg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749335994; c=relaxed/simple;
	bh=91pMF6bSuMVzbvjMkgkJFrHYycljE4BAlNNoO7Z7yqs=;
	h=To:Subject:From:Message-Id:Date; b=Z1y2+hZR/bN1oqnwP5zTDag5M33jFcWnIOU5V7loRIvA7XKEZ8YhSMn+FTsQdHNSQXVUygQWxf8tg2dTmOkIwFm8gR9PJSXhy1lgW0Q0pC7vP3X44lWrwX8TrTxISjJI201DsCFjUz0x2QmG4uO2b2SPFQfAXH5Wi717TBEOGbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhdMY5ha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhdMY5ha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3927C4CEF0
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749335993;
	bh=91pMF6bSuMVzbvjMkgkJFrHYycljE4BAlNNoO7Z7yqs=;
	h=To:Subject:From:Date:From;
	b=FhdMY5haYoc6OcXgZpEviTBCPIr1Py7eGUJ1FvrGJRnsDIjH5F1k0pd5WEvx2veW2
	 82EbwgoD9S69gIAgwjifDOwQ+iCn6Mi9fUbgDxpZk/UmW0YoBjuya4u75j68R23LHY
	 fwcIxL2CQe2XmBW7yXgDimHDPEbMYuUBKomCvOFxORECerXFcd2FlzkTvfg3kDcyzh
	 KpSQZxgL8U8+HZSN9BVtt5ue0pXGBsBqvoZUQuHGYWXD0L/L09FfJ61WkTcJfEazIk
	 cVfSABDICTbVAHI/So8cFPH5vG9epbk/1+NzqUUMOmCsfCIBPa85U5KazJ4jiepc2J
	 gZwf3f6dq3OWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC5C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174933599357.28090.18150969789461871282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60308ecfbe7e6568be8ec5eff8e2efc408e16b1e5474c3b93562a5cd1f4f00e6
Date: Sat, 07 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749335993
