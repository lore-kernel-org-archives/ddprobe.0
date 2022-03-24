Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C147E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 06:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648102198;
	h=To:Subject:From:Message-Id:Date;
	bh=s07jrgMeKE7NgZg18Uw6fF8mLG6nmixE9Mtvwuqd1aI=;
	b=HwZ96QxGKYl+IFVRUJo+LqsmxztRzCRVxhCacv6gYKHTKIvXZb6m61Ekg4lFytyV
	+tE6DX7k4FV6X9d+V/k7HJuACPRPtFhDvHv2rBQtStwV9m+SPB37AiTanSFR0msowC+
	OdYQ7rDvi/8CUSKCbYbBojsHQhbkDW9BafLQjcuQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648102198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s07jrgMeKE7NgZg18Uw6fF8mLG6nmixE9Mtvwuqd1aI=;
	b=AElj5gD5ovSLG6YntbdEjpojMIWf3NdmMiCmKtuzS82+aWFs1vfrcHcFhkhiE88v
	76P7HLkqb//YTnoiuMgifohocISyGR+LR8zu5CpS95fIcG1wezsZO8jB7pXRc6MSYr8
	QXIRyBRTcstOnEyRt5sPCiE+H7LI/XDTTvajYPaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba8bcbdc-d8340aef-6e65-4038-a14e-76ec8aa0cb58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc116be65a2f3d35fccafdd96e5dd7030dd7c704d879465db96ee771711a4415
Date: Thu, 24 Mar 2022 06:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648102198
