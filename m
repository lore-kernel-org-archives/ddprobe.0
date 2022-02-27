Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E014A91
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645984585;
	h=To:Subject:From:Message-Id:Date;
	bh=hD8NzRTxUAgBSX7d3b+mjCy2hg6ZKu45ZelBkKr/LhU=;
	b=bJkzQctZh1Ws+ICrh9U5gxBX1h2l6yO8wwJNlZkYW7C4HW8ia+5vq6pbYsjt7olZ
	QGCnQNzvbkDU7Zitc4xewb4KSiGuVu4oWiya5bEa39w2KidEprrOLcYAijxyi2tGI4a
	8vU/+m4GQuORrG8DtW/80DQP2XTv/HZsBqLfl5x0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645984585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hD8NzRTxUAgBSX7d3b+mjCy2hg6ZKu45ZelBkKr/LhU=;
	b=FBvgN+t1hXQH7nAD5bME/8Ivoo+0ivh2JUQt8kFX3Sai79Geco/8BrgUKGaoxudd
	WuqUHYB73RFuSJrDHRg/ziV1ID6O9EbzO+fADfFphbAA7NwzUQK392SWv2FdYs9meQU
	6ZPtTfOlDqVlF3X42SC1kgsNJJo8o11S7+dqUbCo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c539462-09b90f48-a86d-471e-b04c-d538ee142313-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82f15549b4887cd4a59a1a14851988f67606eabefcd748043d70600af25b3432
Date: Sun, 27 Feb 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645984584
