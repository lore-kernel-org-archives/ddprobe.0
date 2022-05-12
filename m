Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C49A28E3
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 12:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652359259;
	h=To:Subject:From:Message-Id:Date;
	bh=myhecLA77gPg0sEHrTe9DLBFaIVoPQdMUV2QIyQVZE4=;
	b=DLw5hD5tPU2wQHvbAJhifhrwxgyQ/NB90xFD12oede7SdM6UMWIdO4IYPx7HZnS7
	xATMOVin2Hyk7BxiLs9vHzmv055vHXNvZdrSPo8K1NqpUzm5AxBf2BF22EwP69Uqh1e
	rxdtyMhgyVp9iZ7ysnpvBxUAhb3cPEGN1bk3YPtA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652359259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=myhecLA77gPg0sEHrTe9DLBFaIVoPQdMUV2QIyQVZE4=;
	b=hVncoEGFGh8TvQOoEHr/l50J7C8EpG9s41A+JiNXSWYJ2pXLQBTXUv5jjCGXRZt/
	iRiS2CNoJ2lII0s6TAf14S/lmDAD8fYLDXNEb82yGubURaW7Vo0P2+xkC8LUWrksiTX
	ul2aAg2HWOSiK7MEsbo7oGsCVANCb1SGtgI+FyIQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b84964ad-536d682a-3f9d-4089-92e3-82f7da49ee82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2dc5b879caf59b564cd96730671dd8b2b2d60cdf95cf1fd196e3d2123b2c2396
Date: Thu, 12 May 2022 12:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652359259
