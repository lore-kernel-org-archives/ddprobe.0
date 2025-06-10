Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C058724677C
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749580793; cv=none; b=jDUR+/+ubYWw9cof3mM2HjuWus0pajkBpldi3z5aJE2USRe7nZpG7swQOUnpB5zAPe27n2+yM2SZ/10DTPB/kRbNF+WXPKVRTkifsksEKvaaBWZ3sBOoj2PqHRwIxYAtBHAQ5CG16zL1JBbIApoC+m1K0jlxN6sZlj171ovMvQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749580793; c=relaxed/simple;
	bh=A8aYMjHaFD49h7XL0MtwCyqIO/vXDQLdLEIXLc2UOkI=;
	h=To:Subject:From:Message-Id:Date; b=rLSyFo2Z2+Tv8RFP0Gxxbm1cE5vyl1iB6EhYkLG9ErJubcotXOavUCKMnIR3IDZsNPgeTqV53aiZKMz7W2Tmn1rqI+QOltnuoGxgyVpPqetVzIVQiNGPAflAP+49DntWLAeCpJ+K35Sgf4KjIulbi+TlWybKURoHXyiE+3njWBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIzTUCIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIzTUCIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F612C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749580793;
	bh=A8aYMjHaFD49h7XL0MtwCyqIO/vXDQLdLEIXLc2UOkI=;
	h=To:Subject:From:Date:From;
	b=ZIzTUCIUUM18D+6bCfTu9HK/eIGLg8sZH8AXvlMO8gIS6At0O4xhz3MzH5xV4nPsL
	 PfP0IJ+7rd040l7wpM9pLwLAd6WpDA9m4iFXwBb/PiZ4ugR2MbXytAxMlm3AD+isU9
	 F4fa5MXp9NRTT1iBI51x5q6WzNZ67QUKqkyfyEY/oqk6nnTUfIkv0KrUPgRiFxB8IJ
	 FiJeaJwEHvt6yFbWv6cTzANW/p8h+k4FQEi/eslVBLhsiTASQecfTGmCdMPQY/5466
	 hICNPSSQ2osuGxicNEserNAsHJ582m2IZxZM/xxIPhRej/yKTPTC42jC19+BrsXRV9
	 Yf/1ncMhKmWGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F619C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958079357.24682.372891654662656976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de558a9f759139f24bab54d91423f7c4bb7dd7897c977ccfaa0ced7e9315c641
Date: Tue, 10 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749580793
