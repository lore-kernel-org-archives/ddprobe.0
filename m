Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F0A1C861D
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747502394; cv=none; b=rGgha6hF1jqUUoehvgZwRWvcxnsLL+We12ch/kM93VmltaraTp04APf/UHlI5Zw/sPMqfdHomZW8fqXDmQDQ64zZtCDrenPoSaaX+0hsfotqnjth4T0MUW2UWzX1I4YRShpD+wwozGvJdPPTeFmhsEGc9WsDGdQqACkspE9bWvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747502394; c=relaxed/simple;
	bh=LJA9rxWeHgHft+72eeEtD3R0+5ab1+WjuZMEetTAM0E=;
	h=To:Subject:From:Message-Id:Date; b=KpbZLQYNlsIIPphAAwDwI+ZaksGyVihBSiW7rc3KHBECWklOIkB1pRoWuArvjVQ8Z7OxgLjiPqlrX7XsAxKAS+HY62haCul1S2TuaWp9M1ItUXWEeFs2p56xCb7W2vbcQsoi+qUhfqJoRg3lJWdpvX3YzrKVKv8Q2ItRQlH0eOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/uRifk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/uRifk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D3DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747502393;
	bh=LJA9rxWeHgHft+72eeEtD3R0+5ab1+WjuZMEetTAM0E=;
	h=To:Subject:From:Date:From;
	b=B/uRifk0Kn2IYDZzaPpHhLGMOVgnXo7svgtLDiD4i8cXIGE9oZB9z36I8oTaUhklv
	 Q8WCs6fiUBvWfUgaoUBjlrIlER4h1rqkpxnycNfOm0I2/p3DD/GPXr7cxcdLDcDkVx
	 P6KZaxpRz1i5bEpSQXXEqlv3758MiLdZHkE3YPktaqVZLc82aGCuJ4LhNjtNCkP3pN
	 Bu8mxtnwc86ofT6aLfBNKyEblIj3BYpXDhQE53I1MZlUvZ991cdCtNaezHvFP8ptg9
	 S3GZKhV/BThD2fHPMskw1iA8DItrADfqJpJ2aVz0jhuJAT2XmD0Uz818hpnF3GfN+H
	 H/NS2G83qH4xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC4C3ABDD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174750239357.16507.14851264321273733270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57597c1cff086e06e92610ccade4d206616208d65983b93a2f4bfd8cc6fb0481
Date: Sat, 17 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747502393
