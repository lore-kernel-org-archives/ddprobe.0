Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746CB3234
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 18:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648406158;
	h=To:Subject:From:Message-Id:Date;
	bh=oEHQ9ro/zKlRw1t3AwIPHe3Jv85M+W0EdEHfaFD1nqc=;
	b=Yd31NlxbReLyjIanZmGEY0PZ/fsaJsADCPhf4/RtOPQPPU7O0H/xFKzTG19DPL+A
	FxI6aNoNQBGQTf5bnFRwe1kNHUAkeTKokGmgzgxcZrjdXdW5NDQxldIxb/QEiOw5aFE
	OfXPa+lMEaMSjOPrTwYc4G/LmsQi9M4i/icNYEeI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648406158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oEHQ9ro/zKlRw1t3AwIPHe3Jv85M+W0EdEHfaFD1nqc=;
	b=Y8f5R+xiF4LBoBL+Xxrjunv/uaQY8kBlie+SDOfjQ0WEOvQjBomRe3n2bU/o221n
	aU4hp8warx6pyMYaAKM+PP5ZI1EHD4llqRi/xBBNl4y/XzJ+Ytb9Nl8t63jtYwc1mVr
	QCJiuxLbQIvS5ZhZHj6fSpCYDrHBYQO8LRdDSjCo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcca9dbd3-827be98a-a0c4-4dd0-a33c-e2bfbb362c36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f55ec804cc2ee41b987feaa8757152c5a9d5605e86196bc098ac8a7e2525423
Date: Sun, 27 Mar 2022 18:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648406158
