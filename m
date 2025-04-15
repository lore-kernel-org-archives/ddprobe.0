Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6D719CD13
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744725594; cv=none; b=NqVim90aSd7C4IGHmtoJutGcvCCrGuUSZrqPIAxUZF5V3E6ONTKtCgPxVX7wjkB6xQt5QB1RIS4oDCfDfqACA5IGcVV3Ohqx5GJ3a7Z4rH3nKlsCSLPgVJWxy5Vv8/kW4sRXAOq/Bx/UezmEOC1uA1NUIie/w4oKdEkUizOTWZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744725594; c=relaxed/simple;
	bh=1boNGb0THEccmwZXdpD0ilx0ZMsRXwNuClMQb3is0dY=;
	h=To:Subject:From:Message-Id:Date; b=ZkfHSNkjpgKrYPGTvRON0whfqdmvhOWnAFN3ldLzH3R+t+eaItKkmVla+xXYS/0ESSo5Z80hbaHswPIRDUMTlH62H2c5oAIozW+dkc7LZf07Q+FUfelQ6aeHHqaaGAJMBmNEjMSLAoNX1zB9ctRzbMSLAckX0rjUTn2Oo5a5lsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDF8RHwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDF8RHwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF48DC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744725593;
	bh=1boNGb0THEccmwZXdpD0ilx0ZMsRXwNuClMQb3is0dY=;
	h=To:Subject:From:Date:From;
	b=RDF8RHwxZlal4hPrjj37s2iud76N49zZwOWr0CC+xd0uEkwksGcoexU73k7HoRctz
	 fM84I8RQHDIXYX6KwNPzCtgN6wC/eNqTXqb1Ep9aHpIFG0sNOUuzjcWn70fU3IF1Ry
	 hzBNzABKfllRXyogu3mVpUD7vm43ccgvD1rVELeoI8Lro4RxUR2vT2AaIecYfYx+cd
	 kqlp8vY6O8PAwlkedhbGj/uBGqwN3qZ/CH7qxEsFm6mkVlis8q0lf/R5ZQtlXcEOaK
	 yPX48yKWX0VAqA1YNPPcMF7t/vuNN/dpruSRscbKwSOBQiJUBN4QHh65g6k6G5KnoG
	 J0Ae2nlhA347w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936A3C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174472559359.22254.5946818918314324345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1438d0e5da209c3fe7b9ff69542277460a176e548296bf67111453b40cbdaae
Date: Tue, 15 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744725593
