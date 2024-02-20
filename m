Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112C65C8E0
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708416497; cv=none; b=k9r3lEH4zkN2qplN9Yckb2sp3Z7dbb6UHm4hBkvN4tQHY2SJnHXRt06lPKcHlWdZ9DtuuinzjNdp6eTC9CC/TkEV+4m4ZiC1zLsVCP015vq0Ie0NkFQufPRkgPPKQsZh9p11bu2ZUh16wZyV3Eji6V7wKex5rucAeGSSYdOKF7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708416497; c=relaxed/simple;
	bh=XY6ebEjfeG7o5JJdx7AbsaJsLdFbAhnQh79kIHswX/g=;
	h=To:Subject:From:Message-Id:Date; b=l7NToTWqeqpRe6SVhtcap15ReTcmD8Pox27hNFKdIcmimivWkNnF8KRsGvf+zfmt7S1dUlM+S+wp+ZOYrpxDm5MryytS6irH1hq1LEzqSKLWhLGH0VHmxQ2dculJKe4v85S80KG/WPnF3RDW/WEd6RU5H5C64Q42Yu1PbsDSeek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pn0k9EvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pn0k9EvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8056FC433C7
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708416496;
	bh=XY6ebEjfeG7o5JJdx7AbsaJsLdFbAhnQh79kIHswX/g=;
	h=To:Subject:From:Date:From;
	b=Pn0k9EvNu3WmiXvufOTovsdSA4E6h9x/Jsdjt9Zd1Nnr9elbpxFcx1u8EqwmZjsUi
	 ZRhjb4zOxkXIbc6od4Y+JSjU9Oe7Jgc5WCr9UE83rQzKjo0oi2HX6ZbHDE3VFwhX0O
	 85YlnGqCEtQPNjGEyQc3HRfLQch0Sgblyr5HkCazJ8Gxq42mSKzWtJTIH0feKnlFLw
	 eGq7eSEpFOWPEURMvnIdQEfB6YvBirJeyoyme8dgAlDoRltSMCjeX+bfxSsHNFFCVv
	 SCa5wirElMNlNYhxSQ+Lj7/d3UF2g7V8oNLmo9Tyk3JZDTtKMgZym2bTKMZ1fzqmxv
	 oL9YP76+MnVsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6725BC48BC4
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170841649641.30686.13896842757622030973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f966d4b22958a08db7badc97becc8801c65332450ae83670526687eaede88e8
Date: Tue, 20 Feb 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708416496
