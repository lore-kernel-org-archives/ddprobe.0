Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE5BA20
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661225452;
	h=To:Subject:From:Message-Id:Date;
	bh=wOq0nXKL6ypIE52/0L6t2cmW3R/j/r0EqVqvzoHqiIE=;
	b=O6n5fD0+p7d6uAmDZpIoYZzZIjOy+9wtd3MTlFKjenptSQgnNKD1Xv7pKk61UBa6
	mlYaTi3pZiJ6PJ5IiZ7X8TF3T76ikT6zky2HmjToGkSGGMtinSaTKDPp6EISrPlCopQ
	yGmZha0kpTYoEYXv7Yq1JOqi+5Vc04dAnVPK6tAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661225452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wOq0nXKL6ypIE52/0L6t2cmW3R/j/r0EqVqvzoHqiIE=;
	b=XbJ+xZ2wm/BIfM9NFuOhoQD4e1xdtbPORjsTJcFpfn9E8r1k4ykQaKF35exYBoKa
	3CvhHsLcuE8q45SutwnSIHJwGTZPcfo0C7fa8sJ5FHxUFucfkLzjeM9d6c79Cu2gU9T
	2Tn/y9DHwAFmtUyybSSXhubtCOHruw8v8xDRSkh4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c8c0c431-ff1c05b8-08a5-476c-9ef4-3c3d7cec39b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec33678dd1975ea5c4007ffc8e3c3a685e38d6bfc3f27387ed7d3a9f07d8135a
Date: Tue, 23 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661225452
