Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B702621
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 07:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651043938;
	h=To:Subject:From:Message-Id:Date;
	bh=xtuQnntLFxFfUJRljsrZkIMwF7j5X4EwXt2Btgprh3c=;
	b=dg3XcWe8hbCKx5YoXzpBVgG4XJLOApiMQPJ8bAkVYhBq/utOJ8H+SRDlu8m/Hm8M
	oOl2JxuFEz6ruXrlRCHvbTkb0olL3IhBAY71m/jyPcH1S6umAA/y2fe8rtdCV7TLEx8
	oNDSCsgcB4Z+GffbluFSbEtvPsshyypyQviCNjmc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651043938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xtuQnntLFxFfUJRljsrZkIMwF7j5X4EwXt2Btgprh3c=;
	b=IFL/22D8uIs4BTyr5d7XKAOPeAEPQfcjPnPXaeQgiJt8AQWvpE36MGNeX9eW2Qie
	ydFn0Pjn1TUo/6a7MlMSpd0y/LfArbH/vGcGt3pn3bWDJAVaAQBjZC5n8uh7IaNOBex
	aGOaAYXodPr06Ul27/YuzPIszJP5qt8PCxy+rydo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018069e32fcd-19d3d94f-8391-4d67-9c3f-8b10c933d025-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d99b3635884e1b7fa5ab652e6399108cdb62a7c338e143a709d966e7d9d4f37
Date: Wed, 27 Apr 2022 07:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651043938
