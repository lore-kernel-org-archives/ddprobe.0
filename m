Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357EB1869
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 18:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655922239;
	h=To:Subject:From:Message-Id:Date;
	bh=52y+6rd35uBPFWh3K87yG6iSzUm9G3bMXNDwmXF5CWU=;
	b=ZR1b5c+9Mm1PzFHX0ffe+fjsI31D5/F55hldQdycvLq3WpVTbNR1HVOwB4t9ct35
	sdroAPrYX8LMwAn8Xx3JJpONOGdDcY0Dajfv45JP0fNeJO8OJYoT4iWB5nj+LIATKAa
	tfKS8Qa8nlT63+8x1FYqLniVIDblm3t9ddzpOeeI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655922239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=52y+6rd35uBPFWh3K87yG6iSzUm9G3bMXNDwmXF5CWU=;
	b=kQ5O4n30rVIm242+5EwHZj2rbP3yV2kztHcGuGsLe9zYQdAOSvccKxCsFyZxpqg5
	2k+xdgSwBhbIAJg8LbsWGTmT0T/NgX69FYk1vJjEDc/jFvVmTzzEEj01qB2QfLRRkhr
	zs5UkC/pj9m/KfAzmU/EdHpK+6Y65pFBZAU3MAmg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818ca82767-2ab1c2e1-07f1-4f13-953c-f8f7ed6e0c67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9793359614d2d1e997a68be90955bcecd360198a7295a2ffcff4cfb5e2e087a5
Date: Wed, 22 Jun 2022 18:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655922239
