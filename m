Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622604C6C
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661209852;
	h=To:Subject:From:Message-Id:Date;
	bh=/rLdasPL2YbnRpUu59OurZeKGCoS0tMmkZZhByQIiqs=;
	b=BcgHnXvXqn8Pykp1BtJLCFFC4uAMSy2dnyr6O4xxG8CLW16lxulFm5cLverS71Nu
	TjStzMFAxq6k9g5t1/sq3QuUTT+uOqId7EyQfIr6FzwiIDQ23RNFZ+Wgl8/ynHyW58+
	FxSuKXumtpvhz0i4+gThUO5HBeXA4VdAhqac2Qfw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661209852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/rLdasPL2YbnRpUu59OurZeKGCoS0tMmkZZhByQIiqs=;
	b=g7lCkGpGxymlWKPA64Zl1EdAH5rQ3DHT4rsYSZykVVmMaOApGwXq168bH8fOYeoo
	qsAXNfNUuGAfbSYrOD1pfm0fpYJH+OqWBFF7ETl1BWFak6bAhehmnkQuv06devU/wu/
	N11OxSHsHD2kQPwKWrW/1BNWhvtnE2fosIwjvjaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c7d2ba9b-90791245-ab0e-48f1-833f-2cd738dbaada-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 871a8b3377017df0a2a9954e5f32839afe458edd3ea9d8135f43a0a8e7c66a33
Date: Mon, 22 Aug 2022 23:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661209852
