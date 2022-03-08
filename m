Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2FE94A8F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646756784;
	h=To:Subject:From:Message-Id:Date;
	bh=SB58t+yOzsIWLF+lrWbZcO9Pz5NIDvTvNnkmoJSer6o=;
	b=l4Dl4leRHhCmrdUsEn4TF5fGPduq3KWBxiddTrwNi8ODWfTlbTBAc6jR9TaKE8cr
	1yD3pDnHgcjs6kB1sAd9mDa5Le6/SPjoi98vqiolIqOh4kuhiRpY1ML2jzQKkbzN324
	WMZI6Q2Q9hC1SrBzKYW1H1yIJUsbS6q4hGiPoHwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646756784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SB58t+yOzsIWLF+lrWbZcO9Pz5NIDvTvNnkmoJSer6o=;
	b=G1Lq7Ha3sHzKLJTebApXojeLo4VWZHS2Lp2iPUKcC6V7YrGtef2OPxg4iiUYIBXU
	0L3IlFJI1Y/mdKMTabC5FJ8OxvNCLjnnzlEmbTqiyIGajtnb0EbrruGzfZk2ltFcHME
	fDFNc0pzAlhoz1oYDBLTFg2vFBXMDGJJQ47dHSRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6a5a6a42-7f850266-ed03-48e2-9d0a-3ad7338529a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d7464170eba719566656d4d950943f815e82e7428de8186546b5ec5b399ca8e
Date: Tue, 8 Mar 2022 16:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646756784
