Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C9E7A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656442612;
	h=To:Subject:From:Message-Id:Date;
	bh=nw5Hcfr79VKJ3lpIG8gz1+D1gT11MmpSeODoRc1uKzs=;
	b=X+LIJbzwqhIN+xbRZtd0jq/wD709ZYqB4xP/HdLZOxJTGYmYdl4Pg2m5lymZ8aCU
	zg8x+TGc7DD9871DcXDFFNMRVlXNKraaq8dD3tZns8SjiQDp5YUE5Gjtxp1A6AHS7eZ
	ZaLmS4SYeL2Z6Xw4AHuVbl5jo585gHj1XrvEoTvY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656442612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nw5Hcfr79VKJ3lpIG8gz1+D1gT11MmpSeODoRc1uKzs=;
	b=YYUMBvAx0Srdx44XYEsrxZT+eWLHi9KqSFeYrmjl40OWGAZO0k0meAbynVaLROFo
	0J3dzOtqje3wZNh4yn/mIic4dVN/oEdAHpRYiGkYmCVHMU8Aia3WW6+2QPNw8c6Cq35
	BvGAIVLMmujnMW4tLUVwz/UAZ/bfJV+AZAl8761Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181abac6a5c-b2aee3ca-df38-4065-8daa-92ff20039777-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72a1382c81dc7ce898eb738423e7704c5f8fc8320d969cbf6eedac31db9abf12
Date: Tue, 28 Jun 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656442612
