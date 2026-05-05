Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B74C2F0661
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778014054; cv=none; b=oBnRU34y61RKwYUyFO14+1IxEocQ5kRKYrebP66+/g6pS6lAngECMHwt4oqbVMH7XzB5Hss9Ie627n/TDIcrBuNFSJ8cU8l0c4h1+TnrvkIPe4hBO/Ej2A2L4PfXDCMCd/4MYq6vsbJfopos4TUkmASne2CJJ89zhd5xzHB1Osw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778014054; c=relaxed/simple;
	bh=yG+fmS8Wfdvm6KCEaTP5c2AejN3ZMCuqIIdgM/wTKjc=;
	h=To:Subject:From:Message-Id:Date; b=jY0hg4HQpkhRN00liAgFDP5GQgx2I2xKP9X0XY0eLPWfWv1JCiKaLDPIQRWi9XsFCvehsSeohyqnHrJgFFHjhASHhnjv1aer9LHpldZXkacmi7yO5PFMWLzPu16LtZ7lLbNFLR5brG8vgdPqmmqxtDA4JSQxOaQ1NAnAXve1Er4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oL1wFBR8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oL1wFBR8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF965C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778014053;
	bh=yG+fmS8Wfdvm6KCEaTP5c2AejN3ZMCuqIIdgM/wTKjc=;
	h=To:Subject:From:Date:From;
	b=oL1wFBR8YZjbDJY/V40r0iK2pKxUpnGdO5GR5MbJ/Osu2EDGVpYktpKz96+xd1Y7g
	 e7SCOrIXw2FC9IkOFLFHmnjFPTl7Dj19nW6pmhclrHVgmhK8S4/uUipBV8G/G1DqQD
	 BnNDbpWZsOVqq/dMLO+gzjSEYrebq0dffqjeude9qnMSTFU14V/8M2I8ZDsY9IUPnY
	 mDMUHrWzWXfPwVhuRSnKIZegwRHxzpxfLaaEhC9Tct3ybA5Xy0IibTxL4fmE1XSqVw
	 3ErMUs1JWhyOY1dnoj1euB1uvYQrVCdbo/kn4W5J8DY/YvY4s4RCHjuj4cClhqj5Z+
	 xXm6VhtoQuQrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD467CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177801405368.30799.14166501386835350196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1744d89affb525eb7ebda32bdfaea416351f6cf36245a1586eca806937b0de27
Date: Tue, 05 May 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778014053
