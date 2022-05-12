Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420602F21
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 11:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652354999;
	h=To:Subject:From:Message-Id:Date;
	bh=88bMLOwtA5mobXLZpT+YwLdDcW23RNINp/wPgIS0LhE=;
	b=SEJLQl8dQGmbXkOsMv9FoJKpsKcgCcu28W8fONh8PUBNYydJ2w/HX4Q66gO2OKDR
	l5SrjjudfQeU1xJJtAiizShYns2b8PfbRwUmyrmRCDoIe2fot1YciCo7tIVFfcdJDiY
	tddibIZx1Lm47yTCJuR0RaeQhPkAgC6sc0Epvats=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652354999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=88bMLOwtA5mobXLZpT+YwLdDcW23RNINp/wPgIS0LhE=;
	b=cnzubr8cOX/2hi4VNTUQ40Ql4cfOi2ZNogS6tBO69mMRswPGXJi2QLn19QowBARN
	80BWD843eD0ikfgPHbI1b5E8asRvE2gBT3qu/e5nylQsji6nBAUyVhUwF8/Mq/d+t7m
	dQKsETn+oURKALQAeZ6flY4cnmxF6mKWMFWaCRaM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b8086422-008c766a-1729-4327-8c61-ad49912b19c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27151a0aa8904a9833a2cbb3950efabc0dff4f4113432085c5ea7d5f65414cac
Date: Thu, 12 May 2022 11:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652354999
