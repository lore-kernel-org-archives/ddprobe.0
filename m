Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71263620
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 04:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647059785;
	h=To:Subject:From:Message-Id:Date;
	bh=XHOsVQJsMHGXuma/R4yKzrBgzjV6SxrMlQ3g69lWXNQ=;
	b=MAr9BSvcOTgpGZcq3LZZQeII5IgU1gIpvxVB3M29XIydxXJq43hy7jdZJawwYb3R
	bz7Fd3MChOtw1kuCINYPOQqAp+UklyMHEPwwM2LH/fFk/BEGd4/RuTsw0VIEb4N0pEq
	GqeBc7nI5M697oPhfrXNJlQi3MbymRa4J/ia7XyE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647059785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XHOsVQJsMHGXuma/R4yKzrBgzjV6SxrMlQ3g69lWXNQ=;
	b=Qsvc8usz6yJqcMA1vVAECdvWmMRnM56oh5WySqmBGilkrDulYP2W18dCItnrm0tU
	MAgI2P1tWexx6JtiWVF+UB72GaIGcvH1VbjaKlQbOMBPKjdepBwRFRZz3SW2D4sfXGt
	tXct48Sz46ZvzCFauj0xU861HKkzo89oHYXu84WI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c69d423-ba1a47e1-748a-47a8-a0a5-9c855933c74d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e9dffe8fcb329aef6bb3b4fc4ae75566babbec4294fa2680313c7beb2ca0c80
Date: Sat, 12 Mar 2022 04:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647059784
