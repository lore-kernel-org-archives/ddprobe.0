Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197571DE4DC
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767202434; cv=none; b=HgdrpXmo4XPARFmb6o9GNmadhupQ5tWZ0J0uh0H9baiB2JFmX6FzEJiFOdz3G2QRoLKXdoJvfFjGRIWvsKIVuzRclYddAyRbbOXo+8TKKf+IVUPvB0XHOGHHR1ueIxyaOEZX+3uoOIrvvq7qjuKL0p3kwY6bwQBShm6mBTFxmbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767202434; c=relaxed/simple;
	bh=zNuNASw4K4FVbCT6s2KQJQxJbpsY0dG7v5nj4G7UUVo=;
	h=To:Subject:From:Message-Id:Date; b=UBAY36H17hNMpxQO3w3B2zKnmSXDnYRF79ezOMr+wHDlHtU31QlhLjqN70uadIV0EBAimlkbGX8w1xRfWu1oIn70aAPBh6iBb2vCJOY59UjCBcRk/heoLDUaWNGUuIUWz567v6y+Rt+nwflBqWaacRYPgXletnqvsbqdaS+4BLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqEMq2bx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqEMq2bx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04D8C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767202433;
	bh=zNuNASw4K4FVbCT6s2KQJQxJbpsY0dG7v5nj4G7UUVo=;
	h=To:Subject:From:Date:From;
	b=tqEMq2bxXj7eOA2gLtoI7aduL81VRtO7gPHIOaE7jal/vc4eqip0Vtqm4cEiIAPD8
	 z8BxnOrmbta6zGTwoRjNCEPnD/4r1l/pWrEPBAqgrjzspVAOpROFV4b13N4RwbbWeC
	 YeheNAYM7yr+NzvxSztFOOsAOQHUVypI3dqLggmyJM4zRjHxDtayoeQXc4gUdbAoPD
	 uc1AD3zyLNcMmzf0+HP9MuS/UW4IcYTfJT0GhlTEblMZQmYj/PkirgbOVvPFlCyL1v
	 chnNLimSrXmRCn0qUppP3EOggKOfRtHUtPdPw949vzRSzT5eErAk0ZjCR3hSe+8/JB
	 b0KEgLJ4LUcbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DDEEB565
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720243357.16549.1120120499899099662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b33e44cd309c025f6f876ed1bbd0a19127370615a51d294a4c9f604533a0d6a
Date: Wed, 31 Dec 2025 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767202433
