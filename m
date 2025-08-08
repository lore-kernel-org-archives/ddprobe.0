Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6124926AD9
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754669994; cv=none; b=XEWw2+Sf53CVi79y0F3m1tL4Lxub/kDD/ekZhTG2kKjsAP/VVSp3bvMSqqYUUjJMlx/Tm//YdzqJY1loZ9agFCItqq7JjELu/w734wwk7FDVrHH5gWSsGbTblRSdeQHNbP2jj8gmQt+xF6U28cbuZB94Eug5CHcTe/SUZH7ggYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754669994; c=relaxed/simple;
	bh=/hk9FXwR8JXJ7fs9gW0VVPL3YML7nVjyMTua3fmYioY=;
	h=To:Subject:From:Message-Id:Date; b=F6e3hDo50MRZFGMWJFSkHQK/d3PWARKBG1RYlCDZkluMj6zX4QDfWh/h+Eg3H4mLMG43kgONum5jYPy/svL+NdZoDjcPR5jP/zgrvf8r1lgc41iYVJ+Pu6Edqk0ED8SmF/Kx+nrsU0SVVpg4HHu/NSJucYZg5VTVlu1zQ9WCOBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vli2cJjd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vli2cJjd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15DAC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754669993;
	bh=/hk9FXwR8JXJ7fs9gW0VVPL3YML7nVjyMTua3fmYioY=;
	h=To:Subject:From:Date:From;
	b=Vli2cJjdtrgIr9apSebYL2T41C655IZ/AwyLrtTNNMp39pDe3H4ODeOXEvOQInzQn
	 mp+MZsK7qIhErcd6fQMeTKWU70JgiZ/AfY3qLv9NyLComeSBYekmwEBdcrEmjtxNnc
	 I21u9N3jMTKEj+aiMrCVY8Tm0ktqEdCvWXBx+jEo3GvKBqPEFxUcBdZq7agiyb1CA4
	 UcxOn8el7YMfK62bkccwuICBq90Y8De7ZseO8ks2p9UDyQWkoOJpX7kNNYoEYU9uho
	 Sn4ULLpBcnigPzAiCoL5b4GQS0bveTPrvy+2xB2TuUnI268dVlB1PLA7wLQI5/2dmY
	 oOK3qcAqcR+lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECEBC87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175466999357.16955.10526707111809966790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b3ac39854e9cc4d7283baef7b98b80d371b2c8fae120f1bc33083008e65869
Date: Fri, 08 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754669993
