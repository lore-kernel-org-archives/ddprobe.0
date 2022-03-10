Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A091C5A38
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646949385;
	h=To:Subject:From:Message-Id:Date;
	bh=erRwEYxt6lie8u8bxHE7HOH7OKdfYbLBq55deZ5GnDo=;
	b=CMesZVvAe33C94WY0j5iwqaGkkFcgA0KY56bGntDOr1GE78fcaYJc8b2zhyT4/vd
	jxr71vJrlsOZ8+FUA/YrZY1PIKTxBdavsUaUdgvZVtu00kpKzNzvsoP/+uGv/wf2XbS
	q9seTqjpmKIqnr2CjflhMzVsJMz79zvhp0MWk6ys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646949385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=erRwEYxt6lie8u8bxHE7HOH7OKdfYbLBq55deZ5GnDo=;
	b=RTI5hoDooy/akxbaDL+n6NMqsueC2M4RHsGX3zqgGo//0/9CXUK7gpf4PdoqvF2k
	XVDQLzptVXm4JJWmAyoReUs2J46W8MgLRohYuxhqBhst5DIQy+lnRN122TDB81Byhea
	TNPW+1TN4hXxOioid6IEEM9ZT25r0PwOMXdQ0p/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75d54223-a7d5df59-9a66-44d6-afdb-b91603a12904-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c013aef37cce2573fbd12dc3406112b9e4b4ea389f871e56294b5d01e3305d6
Date: Thu, 10 Mar 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646949384
