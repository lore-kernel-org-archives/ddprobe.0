Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066E53B95E5
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772025894; cv=none; b=fr+1ErpamSNPG1mxeAdxbTenvRC4FQmuiygQz7IFtZatJucR9OxhJ4pGV4++dJJk27CClC1an4pp4r0ZlCuh3OnY1FdgcgvTmhxfS3OlHP5Jrl4ngtfQJsZH4IFKjeMvoXzH1JAmxgKgP0Ojukq1NzxXMcacz3BbCEBjupwbxo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772025894; c=relaxed/simple;
	bh=xyQBTAXVJq2clfYi+5V29/igbfcRUCZ6MMcaygY1uwI=;
	h=To:Subject:From:Message-Id:Date; b=qp/D33kAsnW941FGwxXy+JDpdYcfbEt537fx4vMptpAibyZNVWCV6w2sQoxMzcbf1KeIEKZisb1CXb+gWXm8DhE0XAv2S7DlPm/BPFpTLZviRCTwTxOTSgigSqTY+jE114tdU9Aw+/KMyBv2VZulUbsO2JQuFlgq6wxoye6SX7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwKF3Q9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwKF3Q9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AF9C19423
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772025893;
	bh=xyQBTAXVJq2clfYi+5V29/igbfcRUCZ6MMcaygY1uwI=;
	h=To:Subject:From:Date:From;
	b=bwKF3Q9zaKudoEXxztO5jtuDVUnaAxs1EKXkv1WHKJiGzq25FCyIKl5yrAyPdfQf9
	 5CwvJF+Po0JDwmzwHABWjxWKHn92Vaq4d79Aysy8jOamXWjEPXKI/CeWY267r6mQE1
	 +6Zuuk/LE4xYl13RYLP46alJA0v8SIPf/O9S1Du2JFsUMP2Q61cKyJLW/SemcK3Lyz
	 dLKMvke/s/uvZsxxO8gc9hNiri6hvJVojG6xLLzTPRC/CVTL54Wk+Rd/zBwGFtiNZg
	 +nhN6Kko18qwVMTTpsoBEQPmsPfHTjzkjAFjRT1tqFymmaTiXTxWouErgccaHLlbZG
	 XX1/Yyq39aqXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912EAFD374E
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177202589358.8338.5413187792959425451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d577476296a021352d814ec4436977d923afb8ac18892cbf4bf4753fe57beab8
Date: Wed, 25 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772025893
