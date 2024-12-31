Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1041013DDAA
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735628754; cv=none; b=HKs3XcXdga8wqDLgZbRzDw5Dm32pkbRWOD/+uy2Twd63nt/Y6dKSyfr7w3egr8lS2P6HWAtFGP2E7VkhyGMz7h7wCTsfzhw/l+9aqjRdR7/QB93rK1C14xfe+BKFLT4zmWPmL/RRuU3zfRLgsCgj0XCIPHo035VD38dKXw3P4NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735628754; c=relaxed/simple;
	bh=/3thAaCRl7it+v7GDbmOsc7tUjisoKmP9JcFAHpzMSA=;
	h=To:Subject:From:Message-Id:Date; b=R3J/+PTiXZz89+cAu5Phkkr8tdM4qo02jwMhS0Ny2CcpMOR8iTS/23d9P5zF5qfCkp/xE9Qcc0K+1UGTPyT0ICmF6mEHGm795ycU5PWhqQoqQ8I1J1oDk6XcuQ9v933cV23CYOzU1DNicP/zyIihAm3tl0lZ6sMtCERHGY07vag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxxTmTFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxxTmTFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02D7C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735628753;
	bh=/3thAaCRl7it+v7GDbmOsc7tUjisoKmP9JcFAHpzMSA=;
	h=To:Subject:From:Date:From;
	b=TxxTmTFhfA2UMoELUYFEroZu89f9Lj88QgpgxVxgHTW0iA9q4JVHIEcx97n3+Waif
	 DdrfLbCYB1z4jWFpEEex9sWfnIKY5uTLJ3uq2BVRsGOpG8FO4ayxfYiRuRO8Rf1tk8
	 9Bm/TpoHGHqhsWBMKJ3lOtVyCUyH8nRNbmVDf1UT9PGdBuFlAzi0epLyxcxVEuM32x
	 ZQgJUxYhDnDKsLs8t/3xPJJWGJqub265vnQbE9ktZW76dcdGHAueDt4UalA76xrRuv
	 tWyhntTw1A87ZGeRbP9DvgNx6uDXODSHrjj4JxY2pwQuw23u1Mo0+LSNebpNPr7SnT
	 uU2O/m5L3Kpig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921E6E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173562875359.2774.14648759189828016719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71be255ad1711cce88708ecae3075408836110977746fa97950edfca1cb581b8
Date: Tue, 31 Dec 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735628753
