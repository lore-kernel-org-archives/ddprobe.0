Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0176B7A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 05:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654752179;
	h=To:Subject:From:Message-Id:Date;
	bh=fKK84nbEQ5xXr3lhb/c84vrtLhevy9t7yNcBM/bsnRs=;
	b=cvP3QG4sLjmG2Sv3vv+y1K8ibBO5VT5/3lbojoxF4wBNxiT+7Xhu9zXikaLT31tY
	3c2kvAoKJvcpe3lw0ShcinS3IawdyfxEhzRPZvMNnvUCq/g7YPl3a57MfE7T3n6Ckri
	ruu6Em4u4bfyYKWH6+kifAR83IDiG+XK4m2cP4h0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654752179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fKK84nbEQ5xXr3lhb/c84vrtLhevy9t7yNcBM/bsnRs=;
	b=MCF7/NZlFWGWSqeZj31MyHHqCCdnXKqsVYRcPSaeVKcaKtkbDfRDJdlgHaoQDujv
	QKcs4LXfm0P3s9BKilYEXzmlpCMn0oaI5V0tr+QpHVM/CnKxG8P837OXAA8Gk+LAE3q
	UQROBDgc+0urciJ0ta4uDgnG55VjuMwUFDLpisnY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018146ea7431-10b06c0b-096a-44f3-86dc-9d6cb9b89584-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 108bf085394d14aede67bca2272cc1ac4318781144d994da0f3e1046368cdf91
Date: Thu, 9 Jun 2022 05:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654752179
