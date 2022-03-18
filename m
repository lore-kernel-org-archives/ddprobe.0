Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683B015AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647570984;
	h=To:Subject:From:Message-Id:Date;
	bh=NwqfyJrK3BrWAQg24s+lPUG7eRziwps/hzEnyPvnnrk=;
	b=eofHymNqVL67XE/B2j0SLrP9tZmbv3Ks7mbWXFtOjknMBjWq3/qT1fddnqJkg4V0
	QSgFBpx49dUUNpGODmRRG9w3egnvdBGDAZe/24oRVVXNkpCVG0WTmFJvNnkCAfelTPf
	tHAzxyxDVNGiBkizVIgkKmWOJU0w63/8mmpAVRjQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647570984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NwqfyJrK3BrWAQg24s+lPUG7eRziwps/hzEnyPvnnrk=;
	b=eJaTUkMXtRfGPGK/DWTTtKRClC8juvZ5KneH8NigJ3vagaVMq5uX+HNSfPpvO7Zg
	/yGw/Fe8Ahp1DC30QMpEFRdYLremTtQeI6GaQSXK5cQIhY1XyVYLPlKlqL4dAgxaRL9
	MKXldbymtU1ls1PXp/PV/RNHAT5O7p76lPXNcmd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ae21f3c-a1a1280c-5e5e-4fa4-949a-25ada9aba0e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec3fb80cbba7c4d7c87bd156c66df29a52bca25680dcdd548ccf443ad2911643
Date: Fri, 18 Mar 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647570984
