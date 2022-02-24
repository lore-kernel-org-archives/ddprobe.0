Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07E67A
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645719985;
	h=To:Subject:From:Message-Id:Date;
	bh=4Mxvy0cTwxm/Uh5po4Q+ZGjk0o5mBhSBPd+npa8LlU0=;
	b=BvEfoFvUmWrvQ/vwFUmTDxtqdyw0VHSKBUsPTySguOrng0OHNQGnOkJQqXQu0H15
	sUje9HMw6gzWq4RlpKOzv84orRIllrZ1FEmVhszCR7QtEyaWjdYfJg5xLqx+9LSJQEC
	oJWcx8Y62IMyxMSYdWPukz+zMjrFXBbPUL24vd68=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645719985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Mxvy0cTwxm/Uh5po4Q+ZGjk0o5mBhSBPd+npa8LlU0=;
	b=e6musIAaKWytx+JJF5Tg5Ox+XrGRzvATrsjY5Df2vYPn8PIsTsMkmCrDwqakI0zm
	LQwHahNGEs6Qgs8zymt3RPKseg93D9vfQiXF0Lv0L6imVZ9s3Z7PRouATR99KokB4Zg
	Vvo8fiEDdJBjS3GuIpzpkATRHnr+C9Zo5y3gPkmk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2c8e1ac1-8490e0d4-ccd5-449e-bc6c-0c96ca1733d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08e2d5b276e8ceb8c7c61f0d2162d7fcbb6aab603661e9577712c7e7587cb811
Date: Thu, 24 Feb 2022 16:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645719984
