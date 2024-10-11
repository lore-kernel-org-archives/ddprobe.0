Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25013328B6
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728627354; cv=none; b=nV8NdometH/t8wKF5uaRqUfwWnO+tT3rst5LcGppbkJBZrxNfKd80Jq4dgK4rBXktmuuGucTpK3OSqcysQl+h0cFBTTrOn3kx5TYLG0VmFUoRackpmUlYBWyNEOcaUGk1pBLkRaHluma8KGZmJ8KjUiHXe6m1BiWzS0N9lsVxJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728627354; c=relaxed/simple;
	bh=TmNESXuN6P8hC5JjIp/ZEyE7RclCw+ukvKPpbK1umSc=;
	h=To:Subject:From:Message-Id:Date; b=tetaVF8mdWlz82VhkV40uGZrH+VW1LF4JcJeS5dtBe5iFUI62Qb8QeM/i/mk016e2FwQd4lBY/0Dka/5E8ECgmkWRcRTTGpUd1nTgq7hYZLaSN5IUkKiC015tadLr9mWMrp77/ppjpGSLswh9VVC68i/ju5ThuorAm0HCmKF5G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ugn6WrFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ugn6WrFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AC5C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728627353;
	bh=TmNESXuN6P8hC5JjIp/ZEyE7RclCw+ukvKPpbK1umSc=;
	h=To:Subject:From:Date:From;
	b=Ugn6WrFEdgDjeqdmqUNrf5Grdgklczm0NMAf6s+aV1vwvanf+zZyzkMa5q6eHBsuh
	 izn2KUW1Z2ysJ8lju0Bs1+/f2/nos9QPjXlRX3CkbVkWTJAIITI5hcl2HSI8AOtHi1
	 xAZk05Dc1hY9ryMjIEaYkWIsgt7AtqXkVWQgnhhGKSKU/ocBre+zYp84S/SfUjx3dU
	 ua0YfuPBX8MIhFADTtTzRHujCY+n8hk4WEF3lcqBnkk0JxZe1h1WTtijJDbU2eki/X
	 vN++iphFHUWwur0TgruN4/oCPPFvNmy82P5pKR1g9qJW1AOxpM5HnQnwfkhXPXoNJN
	 nXrTxTLGQfzJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918CBD2447B
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172862735358.31969.17133040975333892878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83069ad7186e2930cb9531107e6204a29b2c3325a5b7c62ba920a7442c260e53
Date: Fri, 11 Oct 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728627353
