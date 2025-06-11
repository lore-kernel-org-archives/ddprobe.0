Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D49A26E6ED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749665394; cv=none; b=jFnBeG6G9Mh6MjW+bNSmezhc71EU7ORdfXJCMYGcveFSRG+tocmsn9DGm+sRHT8FqpDiIncRo8iiJFPF1LOCZmv9ulhVc09kcHCCsKe6BwjEB0MUeesZRLEO1xDVJHhy9ECT1GYC3cd0UKr0ShcrOlbAFPC5GlZ1tD/61iBNR6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749665394; c=relaxed/simple;
	bh=x5Vipj7f81vWFs8lxN7ztdw87tWL+7pXFMO/vKIxCus=;
	h=To:Subject:From:Message-Id:Date; b=AEO+Otndwd9pqNxZRF9O8GzUDhuDCP1Hy00PI9nxJx94gYop+G1zKYIpMjRxeabCfeAxiDeQ86s7vdLXoIuC59PeWNutksTtCFlYBPxKlQi0NMSS7MA+Fn2QWssZ+ChNMYLIf+B7Wx3LFAq3SAsMmLJ7KTYq2pfiRgvdnMxarrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnilkSp6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnilkSp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A550CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749665393;
	bh=x5Vipj7f81vWFs8lxN7ztdw87tWL+7pXFMO/vKIxCus=;
	h=To:Subject:From:Date:From;
	b=UnilkSp6h9ZIhMezG7PZyQEh5rEuq8H9EqV1twxODRLyEyKd+fWDaoaCgSVDjn2Vg
	 XVXttG2bxQT/OqEUVGKtin42UVTY8mSLiqvDAVg1Iw9cTR/A8XgdnaM2UXJTaA5w7v
	 DS0WLMlRr9o+Klk3+QLiMl7fxUDZ/tUPIvTCY+KrQ48Zr/GEchtBRVswNpzIv3cl3c
	 u6izBuvk24UVhV1PHvihAMcUqYROvEDQGOqaG9RR+twPrRH3H4y5TmlMEYtkKuflKp
	 3w6bRkzZvg3FdhV30rXEMbh6e9SAuqJQW4DY49McdXbQJWcPVshD5OQk8DlXnwuUKJ
	 bNSQmCELGz4dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9279BC71141
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174966539358.7998.10338953760023679500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b48f38775c5ec16c8392bfe0bae1835867d4b8256704613db3b7ffadfa636d39
Date: Wed, 11 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749665393
