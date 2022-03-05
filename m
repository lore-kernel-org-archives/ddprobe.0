Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B00DBEA3
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 01:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646445385;
	h=To:Subject:From:Message-Id:Date;
	bh=RF2FOsiZvSdDuNDy9o0xrlkUb9GSRYe28H9bf8Zm6gw=;
	b=R/HwqBYVZIMzlSu7KMjTNsuJaPLnCmfTuSm+AlywM3WQJ/yJWgqp0tlWGWr9i7Hw
	aPxrBbgRYYIq9GV7AQzbUwzUb6go+rkbOTP2gXpMmo6nE6/NaQ9djHsajh+Xmr82qpM
	wwXEcd1kJDMx4jz21buZEjQfkdGaBuIgGOge5MjE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646445385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RF2FOsiZvSdDuNDy9o0xrlkUb9GSRYe28H9bf8Zm6gw=;
	b=cGnY4SBejO4HK6itDZW8uNZCuSkjncW3B3AjAuOXYbOC4xvcOt9yrq41UwhavQDl
	xHuAFhPvyF5VjJ2mFKya322F+GcnjHlh9Vf7BktAiFF1pvAXAG6r1EtLDSGDBuoGo1C
	6523hlbzrKx2jce/pNFOPj9dFALAKaJXwivJU8so=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f57cad47b-0fe834ee-e68f-45ec-bec8-fe10ace6c83b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09231a57bb1a54f2e662215c5f928de072a1ccf112093b3fa5a85c29c6601b67
Date: Sat, 5 Mar 2022 01:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646445384
