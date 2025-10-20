Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA9629D267
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760936394; cv=none; b=dxLESulSB2Myh0rceDANm5kriyZwdSj+tj9l3p7jJxR+Ono7tm6AdcmBn8ICIGJV5gUWkzvoOv6/vtqLb4bUJ1Io2PT4x5d5uAanxof3B1tOysLrxWL3PQu5qkhIaFklSapAQBSgRB15J5A0PHx1PWS9O9DncRajjx4CfAU9PxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760936394; c=relaxed/simple;
	bh=sEAJu/swSFUqKB7BNRfcfKPttDPq9MhqvIWFnCkjbfg=;
	h=To:Subject:From:Message-Id:Date; b=Z38AKWHlXrJvuHmuqfMBD1zQSJnRpmoI4IJHeAJIlPOAFj/1oWBaoW6RlWXOwk3qpPWZZbJOBebYHUdn0QGK8xq+1WShpevxcgwRgUWJ0tlQvWvvGmH2MzWN033a1q1gTppMYZF1mxGjMeqJWe1eBbl5I+S+67ooWHo5jUTxMD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9HBtMs9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9HBtMs9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5D7C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760936393;
	bh=sEAJu/swSFUqKB7BNRfcfKPttDPq9MhqvIWFnCkjbfg=;
	h=To:Subject:From:Date:From;
	b=M9HBtMs9UVq+h8rBRJmNRk7M/6uARI9683n0ugZ6qvmTvywHnout4GxEzdTtk0IHc
	 PVo5vERuAARw0vi9glq6b8WgVNQxAMB81R0KoLEwyMRcqgh/WW/8MxDw9vGC7UWi0D
	 64/JB/w/O0rCIIU1zvehcwAgEteiHkNIRYtZ1CqSjCiggXsQREDPYNTKKS/YTyOp5q
	 2HOkkct0fxc734Bxwz4Azx3h58MTBw59Zo1gDXfdMADRL80x0F725rpJnrBoycZCy2
	 bqqhshQUcGYeMqXj28YSRNImi1pBfIe0hquAuHjiiQw0FZL5+Bj/4T317S3I5zs+J7
	 OjR48uIlBrhag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E2CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093639358.9984.15463086874325720293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0788843327395c8780a589cbb83172c77169a7bceff914f6d04ac2080c9596
Date: Mon, 20 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760936393
