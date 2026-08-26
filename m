Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C223F9F2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787763034; cv=none; b=TxNQtofNEJWWAWtBwO6JQyE6dAP9REoqsHBhSffc8wNQ1TT49jmGhQ6Z0KYjv/tLUOnL1KCQvXEndTd/LTx1+791eOhc5PC1jDehCEDDyGMszCbslzp/Oj6H7b8QZnX72+BqB921irkhJEaOvrTEy4S6qBWQ62llwEMwz2XONZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787763034; c=relaxed/simple;
	bh=oJ94ZGjFCNmMsQUcFtd74DrGIS2S4pPJTEjjmCS4HcM=;
	h=To:Subject:From:Message-Id:Date; b=YYCbnETzj8aH1/GIVY8bUrsHDkbP5L+QBEtoiVoBMip5gmWOwIj0Z1oeF6pPzLOoJQWzJncr3YNbR3jsJ4sKVdWAHcPMVMTlQH4xIVU21yzWnkl5vPhKeeRTW44Ox4egd8RtGLimytiExjdrIcRMMn8VdwvTVX7ayzrisvXW37Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvBtdSNn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvBtdSNn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA36C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787763033;
	bh=oJ94ZGjFCNmMsQUcFtd74DrGIS2S4pPJTEjjmCS4HcM=;
	h=To:Subject:From:Date:From;
	b=dvBtdSNn2tVaIUp+4GpIPttjj8vPErcb1qoLBniRfGfS3lWZ8svbYHmIKohtSlqw4
	 P+wvEUJ1+nZg60mgUZRMIh3Ey5a5KKDeIx5zoOiKJOGReISxKqHyvUbbHOgAfdliOp
	 xnE4hhLrh0HqYMhjlDdDJvJtCUlO4v/FkjV5PdtWMUArUr9n+USYysydLofvE4FCYY
	 vQ/6CLtT8lHf6z+yRSC0Qd51ogG9Z8ALZbfOIV6jq2rV3P2b/SRdTaToZ6wRkQ+T6y
	 HS0cPsOrgRzBowLmW4HclUQphgjtbX9mnlsGUJOnNNu7AVM1ofFtz2M08qwXgr5bpA
	 4dhzhKPbko7KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9DEC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776303368.16723.17072860999071355502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44fa30f483222b70ca34164859616ea5cb09e2a63735d6996a6093675d6373f
Date: Wed, 26 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787763033
