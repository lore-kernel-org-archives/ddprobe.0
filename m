Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0842E9EA7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758731394; cv=none; b=BmQa0BBZ7CxEnfjOuP5QL2HGBDnADWgkohQPBinrJL9ZGR5qQdozVkJMEqS69j4Q2srfZmvbAH33PkgGmpMkFfBosuuULBsA9WyMgK3TkFi/26eIdXwREEUXUoCekNRviBuDqjAitPGYP4WVmyB+rIokZEPU+A05XKZP3REO3Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758731394; c=relaxed/simple;
	bh=Ay6nVYA2IE6Ch2eH7xIVDmoltGT4ERZeU3nI7FVwO9Y=;
	h=To:Subject:From:Message-Id:Date; b=lDQOzp1IRgThNOCJ7WA5rkSeQtzrLuH1G4QdnW2jS+MjJ4GjSvHkW4q5VogYXHXaBEJ05uN+QZJDH2LBOS9k+iiWOhpnWT17j32KMI4YPegUsA+HrAR+ZxQxGP1awoxo/kyg8pKDFLU+ge1L4YE7td5hB51Td8FfQexu/Lp2v+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNrZB4NL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNrZB4NL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73D2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758731393;
	bh=Ay6nVYA2IE6Ch2eH7xIVDmoltGT4ERZeU3nI7FVwO9Y=;
	h=To:Subject:From:Date:From;
	b=qNrZB4NLkjFnyIjGDoIv02X0Z7jnf4+3lj4NfSX6C4tLvazQH924ALzygbO2EKeBs
	 uP6NrGZjm3to2bGSFjjevYDreMVBPqwZYG9RvVfjySmk15gM2RX5AZQztcM9elyfum
	 M5pR0acQw9NH72qeVtRey+22A3c/AY0GZrhU8fZFG6Yz+KItmW5uSQl3+w/dIhtFID
	 PH1Nju2Rx7eW3Sj8B0AhHBUiIRsUu+eQsHv8nPqJAIyi+uV3ef7QDtOaKF92+kEdQm
	 GggDaczR9XNSgX7LG4NZ91xjvtSZyw/yU/QF9190Ponp7W6idDSkOTYYcdMubnC20P
	 /2CEvtD3mq9Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AA1CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873139359.19376.4976413514163478661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88b1d3524965695f93bfe8fb15508ed528a42b96b2361471502819734d3da72
Date: Wed, 24 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758731393
