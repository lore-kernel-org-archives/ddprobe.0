Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1169036D
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 04:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657944412;
	h=To:Subject:From:Message-Id:Date;
	bh=TmF4BnRz7Snp1SqF6EkQS635ZACijk3K+KJ2vGOee1s=;
	b=hOis4uzcxg87A0wEDt+20YgiioG1qoplq1GJ2VHNVXTlPV+1lq3p8R+DzPXVNpKj
	Z4bJ7xcASg3zq8PQUiQ8VYaj/INL9LIN+uFvRGc1W+O4EkA9uIQYCzLoiBx5urJL1Hu
	wFUTwFm9FWlN9dWq8pTxpVoMZB4eJwkf4i8jb+5s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657944412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TmF4BnRz7Snp1SqF6EkQS635ZACijk3K+KJ2vGOee1s=;
	b=V7+eWsyMrisMcV1WBPWeub8XknZ6JrCrY+xtdNi2BF0a0aXOv23JIWG0kFQzzMG/
	GJemujPkM0Ta9Aw7y68Fi5379Azgm6jLb30jIm6dleEobZGaUA0JikyufpFR93oznYx
	pGJf3C2JalQdfi7hJ2qyLzstVfvFCHpOz+kEweqk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018205301090-f1333f06-6462-42a0-a35e-551de28524b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efb5162865106a92780c34064c337e280ca47d31d5fc3d840e684a463eafcf96
Date: Sat, 16 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657944412
