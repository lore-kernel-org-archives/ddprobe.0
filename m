Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC6217C4
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659267652;
	h=To:Subject:From:Message-Id:Date;
	bh=BgFrcdMybHKIvV1gEe6i8owxVdf1iQovbs/uxe59oKY=;
	b=OYPn4F3v8sr0ud5BNGBBgpGWp/Md2EqHhc2h6sapjMz7bkE27SesA53RaGZjv563
	acl26DWbKaVUvPHKcdPpiLNKb7m3vfosc3fdef5Skjd/OpyLoJF25158U1p0G/j1g6g
	SBVv23ZswAn+t8aHlFfPWi0lcC5S3/Qh00Tpo86A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659267652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BgFrcdMybHKIvV1gEe6i8owxVdf1iQovbs/uxe59oKY=;
	b=jjfhVbvNXyEMFt/5SyhUlURHNK8kn2Kh+Gea5wJ7+HdHgDz6gKXZnyI9LFUzBwh/
	IrgsWPeorXIvNWAVmdnQd5rJm4PAUL0eyqh/hbZM/qwViLUu7UpyMunCtIBdfh9/5hA
	f3gnI0jCfzrNPl9UHJ5RJc0wyYgp9urH5l432Px4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182540f1bd1-c2c68de5-2830-451d-82a8-552f7973874e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a35f74520549dab76fe6f54e8fb0aee4de8bef20d9331e6ee5980bc9966095f7
Date: Sun, 31 Jul 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659267652
