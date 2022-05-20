Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057FA7E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 23:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653088439;
	h=To:Subject:From:Message-Id:Date;
	bh=u4ZDhU5JuBofQEXP5gAlOiPUHBB0ZWEbGHSjoVLFlYA=;
	b=lImbAU0dhhoSOjHZQXzW+T3sng+2AnjNCqCp4I5l5JdaLjETjfs6E06vdKKkHFl1
	M/2QGd2ZGEn8lvzD+oPkL32JWa9ue6IhJagsuTkwC4VhjHuCOxGpRF4WEoRfcDp7c+g
	ZA3pjISNQGty8e/qHaFKOLNrEGaYUYgjJG6zcMHM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653088439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u4ZDhU5JuBofQEXP5gAlOiPUHBB0ZWEbGHSjoVLFlYA=;
	b=A5+FQ3g75fEOLdHKlFvJRUfe/zLp5HrpNvpbDSX+6R4Dy1RfLnaRvBasVLEziJjM
	AklNtI7zTV381DyBgmER1Zf9RVMKweU6hbOP3nI57GAU4f8D652g5xyy8n824l5FcX6
	2ZwgrGICPu1lMYcNfxKYKrSWNJ0OcCiHHxYmhDvc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e3bfcc17-61f68bf6-199a-41e0-989c-be60a8b152c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e7594d652842f445e398cb072afccab3b999bbb1e1cf0e698a4dc1832e2f257
Date: Fri, 20 May 2022 23:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653088439
