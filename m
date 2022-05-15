Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06317363
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 07:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652599619;
	h=To:Subject:From:Message-Id:Date;
	bh=Pks335wJO+oBRiUi2OcHFQpTGYr9LBuVcNQZXsUoGuU=;
	b=OEmHWwhhHn9yAYFmAG5iUrOWJqdILi8gfFWAP1OvBiDm/Zu06qsz6fu7PCuFazDm
	NCVuZrvqyW4jNMiWasxs0q2u2PDZHh/qb55W5d5hrcOzAssDHMQ6YoHtaOpmS3Jq7z6
	1PlM6L7scrDi6yFGbwctgao/KRxcfq+iSLJO4ugU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652599619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pks335wJO+oBRiUi2OcHFQpTGYr9LBuVcNQZXsUoGuU=;
	b=QXNgppdp92euZz60eGJNl+rRSbqv/Gb/kgcN4X2xsTHHMFZ5ffdVgRFK1df3W2Ge
	EWMXAGtT8Tq/84efvGNOfmXyPhq7Ey2R4W1HokxDVNDMjWaudj8cCG+n5w9sS7ETZ4m
	jejHWLgjhao62wj5xJZp6QFXtyFqf+lWf50+ZjwM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c69cff05-30482488-fb87-4903-bd67-6dbd3bf0241b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec7bb4819a09b8ba4a3f57ea1c2868bda6442c4d61eb252ff3e79b597a63bbab
Date: Sun, 15 May 2022 07:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652599619
