Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0528428313D
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774718094; cv=none; b=A46nvFRQJDUi3NB4/Lnbv7iqYB5RaQpv2PgsGkn+CR1R5I20MoUH/6tZV9oa96XJOAEFndtTw+5HbBUfNh9W/frYF2XKqVsA/doNT7K7BipB69gVOUxGq+rXCcxwglhM/hkyEKdHKaHdNPo+NhQfe3liKRlo5NAp/vTi3lhbslU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774718094; c=relaxed/simple;
	bh=3WDgJBXLHmW+wDexPqDIhbEJoTAD28wNoE8vseQdx5A=;
	h=To:Subject:From:Message-Id:Date; b=EBJlcwPYHOoHA3SHLoqyHl30VGsQ2cIyxx0LP1T1lvkCMs5kGUp/SFq7wOoMfyU7rfFEtTVXgJgk5V/uskA2r/zOjQ2OrScWM/BjO1S4Wit9ckThSM8GJ6dR3qxaLiTGcpSF4uHNFTJZHFnKwvdPPX3Xs8zCUyhqAHy5kVVzuPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAat3Pyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAat3Pyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15DFC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774718093;
	bh=3WDgJBXLHmW+wDexPqDIhbEJoTAD28wNoE8vseQdx5A=;
	h=To:Subject:From:Date:From;
	b=BAat3PyiGj9KGY+gFUAJ1hsVM+Kg0lzNHuuRuHQWL8BIJDSk/EzC3iyNm9lnn52Hq
	 JTY0Z2R49Sf4Dt7KiHeBAeFsx+hr9MCZ6gbojqHE1z++cNJtz904e1JTcMlUTEVdSm
	 WwOO+rqSJY8VM7SBgXXoTg4X37IP2SXed+4kPwa5WAaExX1/yLe0kTFN1C2oEQeyI9
	 GUdSMaxeB1zvxz08TAu5nQ/g/HDEohFnkobKSTdOFCugih4mZ7Ihc5Gnoifoo3fpxq
	 k9eAkvw4HFdGJAqM/8EljA5jwqNwkORl5U5U8uKKrZm/pZSLSEKK632uO/pzsijLp6
	 Is2gbzWmgfi/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F0510F3DEC
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471809358.17954.18080336642619813370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7d8d813b57c43e78285618874f602f782521c4c65d69fb2926fc22deaa080dc
Date: Sat, 28 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774718093
