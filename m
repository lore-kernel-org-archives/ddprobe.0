Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8881840
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 00:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651277518;
	h=To:Subject:From:Message-Id:Date;
	bh=ded3mctvQLCfxbccoH9996YAoPx5wBLutsfLOfcuG08=;
	b=NYL6lwm3GOuLrWLxUtI6UYb+ug0OYLfcBcoeOB69JDmhSqsb4113pcAHawCO1WIN
	0OsX2esOl7vp0z6xkauiI+VX3b6Q0kQirM+5bKrROM/2hCrdnzmh/as62q2Xza8TGgs
	DQ07BqtSATk8H7wmAJScbl4V96P1h+Jovw6+CZH0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651277518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ded3mctvQLCfxbccoH9996YAoPx5wBLutsfLOfcuG08=;
	b=Ec85LyvSLh5cCQYvVnZT/SjDd2zJWXcxgm/evOOZ1qVlKCfX+w16RqdLsRqK1GNH
	tY0S2ObPezfYeY8yCHKsl4yEafqQdds2ovDXzv07uoeC3lT4KkS61TBeNGsUPRHsiYO
	1FxzJZhdNSTSoProWPlFBJxk0V1KgTuENGfP0W4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018077cf55d8-a3381257-9b13-43e2-accb-9de47943d42d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d948708b39c14ca35e55b366507ace513c02ba4b9a366da4705da50aab75291
Date: Sat, 30 Apr 2022 00:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651277518
