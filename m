Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824A33C26
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659196252;
	h=To:Subject:From:Message-Id:Date;
	bh=Z4AdkSUkSD8AyhhMEifRdJzj0TMnEkdrfL9hvarkGZY=;
	b=Mo4UjBpw2Y7O/huAd+vVzz4WF0hiMJb4ijwl+z8/6QMrMoDeE/BQ6iU+4TQTzltM
	UxihEHYcZuxmAMZFaFM3Rxzt+0C1tasBfk1ISW8iM0d14aBr9VaZMItdAICifu7zeRA
	+3LdpynOAsY18CQmHB64Ly+34iXPEWED21E2/aYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659196252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z4AdkSUkSD8AyhhMEifRdJzj0TMnEkdrfL9hvarkGZY=;
	b=JQuM6hBCAgHU9/GNNkd3zCod+FNEGf5GOqDB3vi+TLU4FCscy+pSQSfZAsjD4Vst
	SVZ+gI4OhVgnWvZzGMio3BTMq5YVO7ltUTIOF1kC0FUADS34psRdidRmdm7ksF44HgJ
	swmu08DyQMavs+p/+ClWhk1xMPq6zeG/FIEDhLjY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824fcda187-603e1d59-8120-48c7-90bd-2c1a74da3a38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a405925f9505eeaf44fd372baad1057636b9045884f05d9736972fed8a132b4
Date: Sat, 30 Jul 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659196252
