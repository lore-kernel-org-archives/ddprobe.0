Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEA02901
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 16:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650643379;
	h=To:Subject:From:Message-Id:Date;
	bh=Eo1BZlJcfLYwJszM+/JzmZOGIKdsJT9sFZoUN+PrVN8=;
	b=IOUT+u1EladETzZV0d0EhC1zzkt1lgCb6O/cumX0qtWctSUfhro3tQhvKAgfIPv2
	/sMvBmCBL0a8/CnJ+sydWjLluu5Ed8QRzreupO7Ol9JRhG7Og7GHAPnskt5fWqb2XeV
	SfQZe5RHwqsbMF/Lz3siThVo6Kd6hjFghzoyLxic=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650643379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Eo1BZlJcfLYwJszM+/JzmZOGIKdsJT9sFZoUN+PrVN8=;
	b=OWcJYf/AnWAQhNkxUe+XFyPOYoCTSDfpfbsCKM/qFpgsS0OsN5fm57VehpUb/ery
	u22klbQ5ne1miMmZlWo9dUkwdYM5YN7wp9L6V7AbZ55/xVvAK/4FjV79GIVy+BkWyku
	tqGq60lYirl3E0vaTu05/1wyXz9K+4bKzpxqP/j8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180520320d5-291c6bb5-2797-485b-b582-d2e2b12fdc07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 521a1ec1ef420dcc8f5e12718b2e4a2e7a2699989fe6da24c301cb8150f285d8
Date: Fri, 22 Apr 2022 16:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650643378
