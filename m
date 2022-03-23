Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025AD184E
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648037785;
	h=To:Subject:From:Message-Id:Date;
	bh=lVd33/s1/+Mbcsbh3FKiqGvq6VHuvBl9ekMof9me0fI=;
	b=Qzgzb6yfbcOkvPZEfFWhrNqSNyzcmu8lk/26MB7g+Mc2eVXwOEzsFtMcfQTj7EUK
	Z+3RsNZQMy69HG8aJI3BVfdZNKCeCo+UCePpy0QvBmzTz0nBBC2VdqttHGJD2Ry97dJ
	mha0eumuKIXvOuAypUhEejiGIWF34GiQtqF18SKg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648037785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lVd33/s1/+Mbcsbh3FKiqGvq6VHuvBl9ekMof9me0fI=;
	b=YFNvNLFV9KR28j2Jc3v9vShiYr497jQyoPgYGrroKGwHORq3wqH2EnEYrJ0nPMQ4
	vvTfYselRcpRBllgDz0oq8l7LP/NQVTxPd/1+I1XGNA6T3qq2hfkRLVLvpJzDSsKtpD
	mgfT0sY0xpBneoz40NYSR4K9m+xAvxeIHP5WbLIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb6b4ed23-2e976698-e6a2-4003-87ce-da0b3135718e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1461e9200eb3d0ed8267471ae7c099ceacb56c254cacba979385b9cbdd9f311e
Date: Wed, 23 Mar 2022 12:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648037784
