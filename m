Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EBE34C9E
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646019984;
	h=To:Subject:From:Message-Id:Date;
	bh=9MM6kl2s0LUBeIpw4WO3DrLon1lImlLXyP2zv+dmEaM=;
	b=Esyb/YnIWjOXRjblxiW/Q/zRFrPj/jum+TgT+q5srYri3x8mO/3QFYDmKUPgQdWb
	G34Yj9Qh7pQEYX30LuxHKV8rXi6ZE56Q2B0UuPP8CtEDlkNaAdHqRDZtvLGiMzjPgzL
	75XzgRFDwHU44t5MBuu+MwkD67aYKAvr6+LRK5bk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646019984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9MM6kl2s0LUBeIpw4WO3DrLon1lImlLXyP2zv+dmEaM=;
	b=UDUVffdKpmc0kddrsK2qtUgE+gwax6ZBDKBdcjQdSn491ve3YOsdJX5U4B4xCa8q
	hL2xsI/l3GBpQgNWh9ln18NyTZ/U5l8N2eiZjt7XMGum/SWK6uEeYnPak1kbt3Cddld
	SzXTvo0HZfvwgQyeM+L2XGWQfdnh7M4Tq28K0xno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3e6fbd58-da1d9164-ccfc-4820-b9de-bb4485b2cf22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d20163705b75f4c122d6d83a8fbf4654b962b301fcfa2faa58df8b07d18c763
Date: Mon, 28 Feb 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646019984
