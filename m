Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADA2C75
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 14:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647957984;
	h=To:Subject:From:Message-Id:Date;
	bh=rE+brtsXuk+xCX/6DptHf/qQU2v9TKzu4iHw9ikil6c=;
	b=T5crecFkSVHL9hKA7Imfzc7GR2k6iA4qBKLYMa9Yc+FpPn7Nb3QUP8x1piUtvERw
	LuQlR/zH4hk5rquTCu/gUbN8ZfHs/9WkSxao+fWaASFyH6VvYDT3uw92e2/Y1Nr0Kgy
	m66kHBG3CgQRQqpWvQPCFDNJk5M08N8QZCC6lzJ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647957984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rE+brtsXuk+xCX/6DptHf/qQU2v9TKzu4iHw9ikil6c=;
	b=i2Klblnx7cvKpahZTrmq/gw9EotHCvQIPzCgj9tORCD5/p/MDTDnCrzpcXtJvGVP
	20zSfnon0FCPiwtZb7MDSLM/5/H0gn5WiwFm0racFBYIvXfteoHojtTT7zXKtJN29F9
	RoaxWT6nSQcxdjvuX4pZ1MV+Zog6ZKaCYmMg23uk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1f345eb-8c5de0b4-2bc5-40dd-9825-b61de7b5c1c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8f46d8f0ae95f9310101efc7e6eb53a8557cf2b85660f407b5bcd783881d721
Date: Tue, 22 Mar 2022 14:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647957984
