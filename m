Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B1C7B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 23:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651103878;
	h=To:Subject:From:Message-Id:Date;
	bh=GAIatPJh3XHNZ5djnR0s0KK71fxX9Osb/erwu3tNNe4=;
	b=ckfIV4+/AW0aYFPBuTwYdyF4EMzC3g40KPiqwg/H1XHWOhNR/zzhDWRJz9Jl1pl4
	DeaQibQwpBINwvBUaaov3kroHkZMLVsEuOJxWuIsNVjPXpfXK/C5I1mz9C8HDc2h1u+
	3+rDO3SUBlCqmQwvkiIbEFA/616M8kTc2IuSYyaw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651103878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GAIatPJh3XHNZ5djnR0s0KK71fxX9Osb/erwu3tNNe4=;
	b=Gw1z89bWw8iEZOuCIiUuH7qVtp+8YxnKySc62t2O8CR7ROh+zxBgVZyGCsIUKVT2
	Gu1pODeDdOdeLKwL1kPV6I6tI9xc0wz1f8iT09S0CwQ1Pl/2julKObFYedACm+S6Lbq
	A7c+OjSt2I/DnVx5bqBt/hsrHOIKmaIcEUYX5Rr4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806d75cc9b-82b8bc36-952e-46d7-9a79-77bf9fd05fb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbbeccbabcff828a0ec4e11db3ac0aaeb2c17488bbbb7654425d4a59981635a5
Date: Wed, 27 Apr 2022 23:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651103878
