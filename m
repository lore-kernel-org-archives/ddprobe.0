Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6CF441A
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 14:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658412412;
	h=To:Subject:From:Message-Id:Date;
	bh=1+WrApl29tSFHwYgrT5JWxijYRqBeUjMI2qMMGDfdwI=;
	b=hw7eH03dvaJ7LI/0/AV2Q5VZuPU4dRIRZnlqE7Yv7JRfHm1/o5Bf0nTGS3F8Gyru
	w2tRIkv79Zn5xT52CQ7LwbH7ZP0DjKQ8OKxOn3FA8FetkqQPAb8itBHJofIkJbzA6Hu
	4VOP0FYndrZZhHw09c1syWBlnrJZmQ846c/vWCMo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658412412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1+WrApl29tSFHwYgrT5JWxijYRqBeUjMI2qMMGDfdwI=;
	b=DG4ozIZP5SVJJdiF/VkbDIO+blp7TqgmpjZ3q2PycHCaJzJRPdLWSeRpPQqzY3vN
	CbK22swkBlnH9hQOfLY5bTOq1P21ncVOEtPp+p/XrzsxlEj9sbnnyd+vIH/ZD3Y6v2C
	xY6+/0qupOYdIV0aajMpvVYsdjSgx/HpavrDv1ZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018221152d67-1517f7e2-33b4-4e58-a94e-d56d298e10a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3892b94a0da4cdb86584e499dfdeee38cc4003d52dd693985d951def8c82168
Date: Thu, 21 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658412412
