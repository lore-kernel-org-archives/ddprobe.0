Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BBE1D6AA
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736058954; cv=none; b=CZ3WSklYijyY1Ctr0yfxLi6MeZ1dciDCVygYeAw12SLK6FGsVUSGcTR30oxw/mmhwAyW85iiHqYOPGRW9UXrx33V6t4Ff/0ISECmAmS46JlWkSApAvzOiadTdck3YaKnpd7PZWuptwqjRcBMpDWn2BGKTs1UbSeabNNX3tK2o2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736058954; c=relaxed/simple;
	bh=Ffjkqm93fvEX6M+MLiCN7XEJH6cUeqrn2mw3TSttBeo=;
	h=To:Subject:From:Message-Id:Date; b=owzALzDlYFpR2yiFaRA5M8KuJwVybdJ/yEh1/rkvLpYnILVOI1k11QxAUK9IUIIldkuFY1VlOBX6XUCY9Kf/EXbHJdXloAa2i/aFgGeq5iXmBTa1jUqpGjchtFD3jjn+ymLEF7Pu4LAzrjJY+b6XTteu//ruFfZUnsa804/5cww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+YovV0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+YovV0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AF2C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736058953;
	bh=Ffjkqm93fvEX6M+MLiCN7XEJH6cUeqrn2mw3TSttBeo=;
	h=To:Subject:From:Date:From;
	b=k+YovV0u8bZKtTiPMDkHTP6AQuBAhRJdGxtobGrcsKhyFWoTntpomC8pK9f3TQkHx
	 q87MN6/z8/aKuwFykZlETHrgVcqdhWl9AZyN1akcGo+557qEU9UlUB6fZUq6c8yZIQ
	 j9XgSVoTzzEW/XRZpGV99XnbdsXvKqJXPxqLT0gy3/TjOSbF3Qn278UOPuqVu1TVUO
	 z+AUypYSQP+bwtWeqgn8hi4WT0HmFLD6HrRQ0vkOcic4kIZjTu3C9Mwl9Ts0uYBJM1
	 iMW2Lgr0pcm+GMztg5L/7t5rHC3+gH1FiN+G1atvNFl6ZrtstAZOiv4d4RGsw1OegC
	 +uqc4lqbLmpXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F87E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173605895364.18548.2161950536810768110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4eef76d6e80e013a745abee31f57dc66fd24eec178576d6608829799ebfc50b
Date: Sun, 05 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736058953
