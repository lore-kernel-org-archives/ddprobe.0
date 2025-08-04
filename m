Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBA51B4156
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754318994; cv=none; b=EWZd++6Wlq9MvLVEK1Fj3IEjUL+3EyzMdzbNk027dOSrWyvseHdGZQerwFw2THcwo9jmLbDvn6Pz7xyiGtK8uSXCZO8yynEdqzI6khNNZPWDCRHUqhgce2awc6FbLMDD0UUOG8451srWOYFkaA3JFa0W0e5nIxaWpuv9TpiNOpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754318994; c=relaxed/simple;
	bh=f+to4MZAOVi8Wz7/szdThiXpOm6uLwm2EvmOh0qXQQ4=;
	h=To:Subject:From:Message-Id:Date; b=nrkYF7kw9qWyUJa5EVZ4MIrkIiMl+/UDBsAsgcYPDMlFb6haeVlN+MHblWktmfyhUOnbjMHnz6TthhijWMiP9kCBwsy6w2By/XoX94qtjdFtRwqCWqmrCRru6RHBwfvhTU2j1Ufm0oB1S7yHtejIEYYkabnMVoAhoPgJvZx8MfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HChXSN6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HChXSN6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D82C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754318993;
	bh=f+to4MZAOVi8Wz7/szdThiXpOm6uLwm2EvmOh0qXQQ4=;
	h=To:Subject:From:Date:From;
	b=HChXSN6wcN2N00sW0w4KoiaZ9JuUnt9uytL3Rk1ZQv5X30K7upA5cqla9fBxAKtAA
	 0e34pPxCKRmhk116qQ4d8UEIN5Dyb+fMTQ1Lt476iPQQM2NqO4jhIS3VPqWn+ny2nO
	 1TsDougSsKU6EdU0Th4Jf+dvY3FEXpbSZ0j0xKjAPmeh2OFqMaMdCWe5AmVUV/ja/r
	 +40GIy0F9Wq60VRXQSMIsm/gqrY0o6Cj9pzpGsFa0G9wvmoXFAzIniWSJ0s6gxugLL
	 KEGWZr5iCx/OxuZjHlmiPq/WlbcE6gOOR+fEwaTPIEUsdW+amRggdOOrzZYDIj1voH
	 VMQxNhofM6FJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92920C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175431899359.9065.9647754270329246181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06dc3a63e4d59267e72e78afd0c1c65998738b9c42075c3d468d6b153b56f74e
Date: Mon, 04 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754318993
