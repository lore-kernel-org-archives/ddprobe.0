Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6C137E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646599285;
	h=To:Subject:From:Message-Id:Date;
	bh=EkRnASQvGeVHPYMpPObDSkp2bROygyRrkEq8SIdMtdM=;
	b=WIyH1V3WfrUNlGV1Vs1wzWrjd+YCHFMS+dnou4+R/wAFc6W511PhsLc8g3QZpYn5
	OIZX1Llrhv0BZKYioTI8GaIWVl6YGrLwkf7sFaAR+NpAq0i1/NAgCD4wue7hMUcr7hj
	AzppDs5VtRqRRtTA/rELnvx+rzt8AJV4sHffO2X8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646599285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EkRnASQvGeVHPYMpPObDSkp2bROygyRrkEq8SIdMtdM=;
	b=S7kxFznjRjWCN95EjdW2KJB0Ua9IpqdAz3BCe7dGSf2IOyY8QM9pYDxcp/q8rC5y
	6AukSRHaC0wKfemIp1feq2ehAc1WWirWNXOMKaQTK0qYE1gOy3Ymcl+RqWAD2z8tz/4
	JSlPa7Slky3gdDwSWySn1Can46cDr+0pOjT4S6SQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f60f7283d-2173a6c4-6c59-4973-9e26-7d94f827d6e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 809f89641127afcb36bd9db7293c97de86ff563b908d7d3b9dbf7befb6450e00
Date: Sun, 6 Mar 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646599284
