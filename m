Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B60CEA3
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658911852;
	h=To:Subject:From:Message-Id:Date;
	bh=htGALaKcm/qRyjAQngkwKiEw6U1nE0rwOmsNKIYPhWw=;
	b=OwZmCMoCyDfoOGS0DYDHwVCDuTQiS/dtaGRUzJeFYgEMv0hwj/qnEyWG/sgLt4Nh
	Xwtl+EfLJOcCLv9bAlZ4Bccr3ZsFvD5dG8DlGbIn4c8sSe79Xm13AClFTPhciv2zNOg
	bv+DJJ10BSItGTN0DHQM5VYhX3UhDxFaEjckuu2Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658911852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=htGALaKcm/qRyjAQngkwKiEw6U1nE0rwOmsNKIYPhWw=;
	b=I5W5L7k5u5i7XV3UrLL+mRFNBiuusMg5ebR3aeZcRpef8mWSiC+UFTtXWmPjwYzC
	cvqKbVd1KRYhJl0C1DmCiSSNPVFm3PyOfpxXm4fo4wkPmn5PaJMWegsEX5ZKW3m5JNm
	9BK/VpC0ZmR6fw9phPCTOxQ2waEXrbwMvrFR2tPA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823eda0821-89165319-9bae-4c03-a275-af3848bb160f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ca357154fc6f3125194ae742aca7b7f2e9ee4352af7b9c9b2786b93b93ebc00
Date: Wed, 27 Jul 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658911852
