Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA847A
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 00:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648083298;
	h=To:Subject:From:Message-Id:Date;
	bh=a+IeiY4LJ5F9nsSRtxB2rvgzFCUGEPKMf2lPU6i9dUk=;
	b=TTlekswzJ6U1BCq1qjM3UcZEFeJSydzOowBeIVmw9NSV1zdECKGFDN4jz7fQotfh
	m4ofc6+XOtkMHMqP8tuFnSJMJFLSe9NJTW5nry7it5eVYv9HI/mUUSzd2TTqIggaUVZ
	FV3kmc11e2NGi/CnMCWSeK8Y5C7aci3eLr09Wb3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648083298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a+IeiY4LJ5F9nsSRtxB2rvgzFCUGEPKMf2lPU6i9dUk=;
	b=KQtz1I9oNecsXtd2HpSXiWbWgAz2PPTRQL3UMh1lNFfejntdSMgap9hpnxrWuSx5
	hylzlKRTscxi7IHxMCq21tOsfCH/plWGkLQTeqld1rvxHIc3/p92Zr+mlCs7veOVOt0
	T6+L7Ot6Ea5xlclrUntzKN4QITB1gX5Xw1rnxw1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb96b67ec-249085db-8a08-4828-9e6e-f1736b3038ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea0543912152bd85badfabf84acb0b45e246444502e9f260b085d7e205f1ef38
Date: Thu, 24 Mar 2022 00:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648083298
