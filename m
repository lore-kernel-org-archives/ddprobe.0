Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1F52565
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 15:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652541299;
	h=To:Subject:From:Message-Id:Date;
	bh=Q1ZbOl1DzwxOdeJ+RpWNLbkQLYzQ2j7FIEt23bukur0=;
	b=fl4IuaAxoLg9S1Aqabs5lBHHNqdjurzTnPDDxpo2QjDMjpyihYPo/ux2cqqUmIwm
	V3wcJ2cqeFAKmnhCXkXH5+HMiTCiKu64TWrAG3nvp+f+X4k75zvTVoaJZ/4czUGVH9s
	i7IF+CpM7tm0tSU1GANFdKyTSR9r0cBxE3iLrH/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652541299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q1ZbOl1DzwxOdeJ+RpWNLbkQLYzQ2j7FIEt23bukur0=;
	b=QHphxWejocEXU0pRd/slA3Y9LEbcqqKsXKxwEb7nBFkQR2E+gMinlA6GJMbyUvg1
	oJc7SmkS2e1eKmHeJrYzWntQ/LXcO1x07dM+QmjFFrs5zC3QJp/kL7kNt/wuHUI4G2u
	i6yMezitzWNwUN9vRxZ5kr4OUafeRXDeoCpUPxVA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c3231a7d-1650afbe-c79e-4fd6-8314-448aba1a7782-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 802504d4ddeef44c0d393256614287c94ebe62d024c4fad1e387438e178ca193
Date: Sat, 14 May 2022 15:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652541299
