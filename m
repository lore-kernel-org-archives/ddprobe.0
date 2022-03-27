Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CE22FAE
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 22:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648418458;
	h=To:Subject:From:Message-Id:Date;
	bh=eaWaUtY2HbJlkRSiHuyVoXiQrlzszcM78e3ry9Ka9gA=;
	b=ZZhEFl0D7dGdZO0i4LdY/T5DgU1YEe/AOVFvJa74fC0lmzRbNY3Sc2WoAK3jotS3
	WvLUba5LA/Hw1R2994/eOfE94onzEKeUV1X5jWJZEq95NlJZcRwISqGG1eD8Ib70i/w
	wq/9EcjbG9Ky8YD3F4flmQ7y/GXVffjw99zC9kXw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648418458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eaWaUtY2HbJlkRSiHuyVoXiQrlzszcM78e3ry9Ka9gA=;
	b=M3bbmzK9wArzIKKQpUnPg5kKOYAgDDm4TOT/AHknjnf2O/FeLU5rquT81Uqpgo6G
	ixIy3aUggU0I7h3BZWnutpVR2uOROv46tslOXTwTL2WXHd9XpWH3OAlxe6EyCeo14xQ
	xungv6eCw+ijv0ZWa/y+T329PvgJn0PGFGrwO3CM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcd658acf-c88b8a7d-e1e6-4d10-bcc7-52f33655a701-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa80eb0afe89c122e2bd4ce52a835c87590cb7fb76b011bd4a9e785b5fa44960
Date: Sun, 27 Mar 2022 22:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648418458
