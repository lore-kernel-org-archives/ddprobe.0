Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5992836E466
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789033834; cv=none; b=lS9C8OKvmSoZntY+DwtkUBQOhZC/ijkLhOeEgoZtOHDQpwmWr8/hZ620Pyu6cxmh0EvRDfPrg89M1p7txWTHsNZYQMRTww781N4uBz2GQlZA61notAA75FwH2Yau2B+bkfxH+e5QBBnD+1hlAeuHxo0Gg8GZLv4jOPymU+YlY5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789033834; c=relaxed/simple;
	bh=XW2bIB98FMUF1OIudE7kbQiYCiQkqKR97p1y6D3l044=;
	h=To:Subject:From:Message-Id:Date; b=Nl5+4ASCNU7CbGCRDUr/xkbEdAzfQ8QXPKC3GB0sD/AgZL7DgmDB61rOqady7HyvP13IIFh5N/rEerIB7HXfwMSEAoBUyIVTUVaCdME4c/K/hT9wbsyuj5aZCRKGbL6GKWgAxqf+LhS1doA6uT4DvtAHwYlkHUSCZ4sBGbZc5ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoaUoP0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoaUoP0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E327DC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789033833;
	bh=XW2bIB98FMUF1OIudE7kbQiYCiQkqKR97p1y6D3l044=;
	h=To:Subject:From:Date:From;
	b=eoaUoP0M42BhM+TAO/Hl38cnLcknMzoczjf/71DgndSqr6Zi52jrl+ge0w0lSSR6G
	 pNvo06Hsk3DyLhLX2jGPwh60MRNZ667qDgnftFBiHNEJ/BLxAI29sKl2vuYEyB2Oyv
	 ddTEL6NS7AQxNARQUpyNRXH2ARveAJe2J7pPX6KHNZFZtB8OTb9vLwGsmRKsGSLN+6
	 nhWwUVuoefruUSh+8UtVjJ85ScYanvGMJ2EOVg4VqCuQ0GTpljNUehS+0MYVZwcyc6
	 eCjy1tTiyAb1soFsC4c22g2FECK3TG94LOlMyp45b1KPb0Ke9AMcVGqOy/fRvKu734
	 ueS3Brbjs0YCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD54C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903383374.17749.4877116771095621117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9213522702cbd2f220a793ebc7da158c42bdb5f89892e21cb4405154a946cf03
Date: Thu, 10 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789033833
