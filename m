Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3678D18D658
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760893794; cv=none; b=RaeYjXukgGislbpn9abphbEVdpqz/X0UQYFK0H+1hyqR3Gpja1QVBad4zaN3IGQGvL1j3cbC8kkJtxLtpWjVxltUd1W5/LNW6KGB1PO7vAvd8Paiv4LmoXLGCIZwABt+ub2MzfuTZ8qyohDzzZDt13MJA38h/TI3WM0u4KUoHHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760893794; c=relaxed/simple;
	bh=gA4Iz3JOylZoZm0H4imULGnM2PpX3iN73EGD2j+dFWE=;
	h=To:Subject:From:Message-Id:Date; b=F+KIZjjVs/soWuufTkUhQCt4cWzkdPzDyPxE1MCWgmcow7lIzKSLX5fEXd+4iqvPa8jl3HYG1lOyw80l8s5Vf/pr7Tcll5boCVSu/2vEN6SBML1t9a+gcOIlFW8d+Z9sIC+kirhMu+aFRRf4HtB6ZJl4iUg73eHnKwxE42i3cJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7mSQPjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7mSQPjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEFFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760893793;
	bh=gA4Iz3JOylZoZm0H4imULGnM2PpX3iN73EGD2j+dFWE=;
	h=To:Subject:From:Date:From;
	b=J7mSQPjym7BOgv3VT48fzT8mld8ClCB4MHMY4ggChGtGxb68ockoTRszRnOUDyybm
	 K1QDaFo1HhuuAZu84pkhgft1LZJDL5hNNPcfQqZxOVeztChovRCCv93rojTnMXBYFn
	 2EhftAajIMdGNzQ8b1Fv7Guvk9L9nQyqgZinP7Fqa2ThNT93dT1rVtJEzAiB4iz/FQ
	 aAWOAfH19TT2+Yq9euraNc6gD7CKQRzlDDzmxahV9KIpoyXbDrpmAMfqUpdU7lUVZC
	 nSb4TnAdpRvH3f3e9TndJkd+nYHmabhNDfhJEZqTfKLMNWMTJ8//+JEIVZtxdtbIz+
	 0IKOu/K4rmtpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950A4CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089379358.11869.11008818722195062158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0737640de2afe9f3c84d52637bda3f09256714eb3298f2c1774a1ac18356de44
Date: Sun, 19 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760893793
