Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45551843
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 15:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655913479;
	h=To:Subject:From:Message-Id:Date;
	bh=F2S1vQi8xF3Lnxr2Fo5JCCikoOwe6IwVJfLfMCoDBJ0=;
	b=aIisMYLNG/hYAbrDQdcTzO/Rzay/M7Iy4SMWsOXCZpVgHBpAOO3fJB9GieHVDlzd
	Unrknx6TBKPdzLFFRdqmVi7UeTjP9lRgG8lNSdpEM0I8ncTdc40fs30Wf76anafMxip
	9FjMHcHOufGK32XG5mJwWjRJ8K9qd0akcF9Klbmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655913479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F2S1vQi8xF3Lnxr2Fo5JCCikoOwe6IwVJfLfMCoDBJ0=;
	b=Utxa8h8M4znH4djSrrsi+zZQa2OCmeg8cPCZF80B789aDh4DkX+0MA28afQ6df93
	17CQSkLnWDm/TsfiK1OQaJrWs6WKPFoVaSyTeOL1CIPiynV2uBqsZbkhR6Ef1x77iM2
	YQJBnBe9KZlyMu8Qv8deFxzX5fBS/TldlnrLvgjc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818c227c43-bcc1dc25-39f7-4036-b0a3-4656aead4066-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 091f3d3349588f114b701ae48412c0ad34f8434d51e158307d2cde81cb7c24c6
Date: Wed, 22 Jun 2022 15:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655913479
