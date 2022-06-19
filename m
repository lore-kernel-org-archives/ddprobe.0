Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF117B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 15:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655653019;
	h=To:Subject:From:Message-Id:Date;
	bh=pTIgNMmmyBwIhSh+gDtK7UwmtUYzzd1Fo4ERPJjKXVY=;
	b=X9Y9a6BDmRCVD9xXLc1PlJhMjDJOJluZT2UFA2oQ/2XtfQq6xNo0ynC986GyzXpH
	lDz8OYyctmzMdFFKzTDWNFLh0Vi5cyFN0Q29M8NLvqgZutrEvWk774Y4vpV5CxfLuRK
	DJrDZBLXDItj2Di17Jdxe9O2r2zZ9lqvwAjxCSkU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655653019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pTIgNMmmyBwIhSh+gDtK7UwmtUYzzd1Fo4ERPJjKXVY=;
	b=G7xX55YxVvT/9hpJ8d4lUp6idmQT3dSPGuJa7wRjK92UN/MpbjWCiKOcfCcyrwhE
	oH/cMHmui4/ItVL3GiAZcSVJPYuNBW6EN1T7pXdCr9p2FkHEaQMQNqKZ5LWG3I7RSk2
	GsebJ7hZAruqxJPtQ4nRBqYAxzudjt677ZIH7RvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817c9c2e98-3aa30a70-8494-4fd3-9b6e-664a67c3672d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bad1ed6235b1043a854c296f6de0fa28d408fe448bcee8c0b0d9fd2724bce6fa
Date: Sun, 19 Jun 2022 15:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655653019
