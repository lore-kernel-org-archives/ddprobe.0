Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 881062564
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659175853;
	h=To:Subject:From:Message-Id:Date;
	bh=P9DB29HN+R2zNI92NChXuj5LztkaTbojjQey2gWQyzE=;
	b=GT2hKNMomGy5FkUsI9QOBLF6eNvDg8hFtpiQtgZBmsKi32rknm/sDh4LHyT494LB
	Id8393CsFoqNaCW4EVAyTapJ8PubENBk+lOHdVETA74lHTdc5CohELOAS/vRDbrQTek
	jNCo6igSu98pcba2Jj2BCn6FVABoC3N8VuagZXAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659175853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P9DB29HN+R2zNI92NChXuj5LztkaTbojjQey2gWQyzE=;
	b=fCnX8nE2eAhWXFv+4puJPvED9Vf+2Ourx2NFPXJelPYiFFewIoZwC5x7LU7VVmgs
	YXB7/a6KbkhQZdpgdPZ9KcF1uqXboqlwOh5ALWbw73j7rxhR7pjzC00Ev8FswkKmy2Y
	YWX3zI81qw3NoMf4s7m2Yp1zWJOHUStlhXOac8iY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824e9659f7-ab3b65e1-40eb-4dcb-98e5-a1ac22574a71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6aa0fbe95e3727a550badbdcfd42b59552e4aeed64b2ab070b2cca73e8f00b1
Date: Sat, 30 Jul 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659175852
