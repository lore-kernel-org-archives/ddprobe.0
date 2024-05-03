Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E89215687C
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 17:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714758143; cv=none; b=qBwXXDMN8VU+PJAHgdH5UsiXmEh7d8kLDfJb9LF9erB5fR5Ov1lYTg3KV7M8I9VZyZQUpRyZ6iJszjVO9SV1y5uX5+hQDFy/6VjwOZccbhXUWJp653qyUAjd7ncQRwmrTMg2/JPS0fL2/yNzSuMiqsHzUiM9CLKE8eKNdwyfSZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714758143; c=relaxed/simple;
	bh=uS2oZNZbcQRBRjgC0LaKTP3DJ4xpxh9AAGN0nbNc0Rg=;
	h=To:Subject:From:Message-Id:Date; b=Q+QKEvJqkMYJ/3T0T0Uy3WK6sx4vnA8mEdDRzdwwe1G5d3acSeSCZkpUCoIPfb0mxQQGrvcfQeodMi8v99+LEK1ct2SAIpCWbLPNNv+263fr1teoFllHoXQNIDfMW3LH+0lJuXnMxBVbPHJOnPPVkqSqvz8uncLlxbVmX36dRd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVdqqJnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVdqqJnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D801AC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 17:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714758142;
	bh=uS2oZNZbcQRBRjgC0LaKTP3DJ4xpxh9AAGN0nbNc0Rg=;
	h=To:Subject:From:Date:From;
	b=RVdqqJnO+ZTZzPV64sNaUc0fDVTS9Z11EUobVmVTN0n0MyVLqKkYwQYhjaaJ3CX4H
	 JiCQXGQiESSOuNhmH/Qo0oOk9tKKzvbSm7teLrUPT19BidZ6XZp0e41Nfm3qUP47Gk
	 Xi/OYfxBDnNY4iyHIR4z7+kzS6wxqqFBZ1sPfC20wGtP9DJRDjNp0KRa5hojzeUAxw
	 UEBmENoTgZbCgnfNfonQUptfZ7wchG3B13EMcYa904kelPEtWaBnY4K6j0NY5rb8zH
	 Xn59JlBmjgwiOEW98S9zog9jU3WG/YhlhPQ+M+IljHn2Cjl4sXSO23kUjOhQMe/KzB
	 I5HZF5QUdvSnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5104C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 17:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171475814279.27415.14490319342469052177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992498cd3ae3d71e2f16e30209253805b9062039ec0f041866a67fb06dd936e0
Date: Fri, 03 May 2024 17:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714758142
