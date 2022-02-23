Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC067EC
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 03:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645586185;
	h=To:Subject:From:Message-Id:Date;
	bh=EA2+3LzQeMXZxWx1hse4A0xXRBBMqRot+DtHHVwxTkE=;
	b=VHTkQE01mTXbaOGgVuYCaOUb9iKLegVM5FYd/+NedSsnOJpWeLJ04Qs9L4Dru5s+
	dsuNeU3g6zMPa+NDR61phcvL3mA7IhNFpkfHO7foRWM1Kefo79aSdM5xAvLBjpQu0/i
	s444PBAQBRlPxTmJEt5GjqHLjUk/r+X5948+MrNs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645586185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EA2+3LzQeMXZxWx1hse4A0xXRBBMqRot+DtHHVwxTkE=;
	b=RutMo9tUjEEMyGl3YUAIbFCaUP/1BWq0pw/sm/Tz2RkaGtLaiIBgCO6BoN5Q3zkE
	VlId2QvHTM7hHmvXXik7G0r81aBQahmmMEVNd0j3PAF6EGassg/Loprc/YcENQvCeM9
	uweOvkMhJcWF0myGGHhw52Xoj92oKnVHQ1WduVXQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f24947a5c-6353065f-d699-4d8b-be39-c20cd7175556-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22e44653835e88c9ba50367983600bda631e0ed10442f3a704de46992becdfd9
Date: Wed, 23 Feb 2022 03:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645586184
