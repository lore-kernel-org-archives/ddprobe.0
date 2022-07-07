Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525E07C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 22:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657233412;
	h=To:Subject:From:Message-Id:Date;
	bh=umodWDtv89V7TLN1BMyz9INwJYDR273EuMm0M0JHSBY=;
	b=gHwmLNhdpD6QyS+JfVSQoFXg0q0ylVLpnVz1HjS+CQHlypSOdA/LuBZGP4muV9vU
	g24Pqr8yaFTQg9x8hENahnXgkSrRPye4AYgBbZ8Vuy+DMe2qfTpYpfKNpEdd9uQmciH
	myjJOk1aOFqNMW6gKZ3zWbTvcrPl1M9bybPUqq90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657233412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=umodWDtv89V7TLN1BMyz9INwJYDR273EuMm0M0JHSBY=;
	b=QWJtHj1UiFNWxrKriGbfQLq8xUPoxQcnQNisKW98O6+KCyIK5X/MUlumHiOIr2p+
	gufWSonq4M/KD+t3vtebY8UAxqT/8UmQsOHoa1shY0hoxX+zDELtMnFfrgM6ohEiE+m
	CQ4Y/ZFdgu6mCL38P5s6VjPxfU1TQV6aI0S4BeIc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dacf10b7-67e91b89-7b28-48af-a7dd-1bd9f8ac2c7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 220b989bf2118f1c14e80c162c1eab26e227242691821851c2464d6ebf087f24
Date: Thu, 7 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657233412
