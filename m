Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C4D7E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 10:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648291678;
	h=To:Subject:From:Message-Id:Date;
	bh=JrWke89XcandzH6ZeY5DHIeStMmdqNXUufQlb2FxY34=;
	b=CPQ3PUVtgMqfnkplCjeQE2abkXj8FMd0GuB4ZeZsNmGCcqT/M0kO/lhF39LG7c91
	uk/LgVfH0xNzw7P75Lech++YD4XvzJM9KZc3WIBr/B0E+2COh308uAyiNkgLPEv7t5U
	/ZRZ2Y2G6xK2rBwvNcVmlsi/1BHFE81IJrhiHPKo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648291678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JrWke89XcandzH6ZeY5DHIeStMmdqNXUufQlb2FxY34=;
	b=Eu4KdQdNgXZSVfamBLXuHIfICjBHbNrquCtLRi8YvWoOfGxEyvibVU0HH+ezIGHK
	D477favUUjHV5MYIy6tvMoRouSQWHUquh1whG+5ltcZQXKRTyHaESQcCfBMXXorfzjA
	rHww85mqF4nyuX5Qm3IMCjMRtbo4fG3jQSy60n2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc5d7080c-26eee877-9d47-408f-988d-de534de32d96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a41f03423e4ab6a5fd7d501c65f4ccbaa7d24f4d7d2d61f8c30fbebaac668c4a
Date: Sat, 26 Mar 2022 10:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648291678
