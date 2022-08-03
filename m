Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622E0368
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659508252;
	h=To:Subject:From:Message-Id:Date;
	bh=n80/Mknpqg7L+P4NCW97miqrHg9XniQfvzEg9uTJqCw=;
	b=YwAcN9JTvnfVv0XE2IpMUTjjju29/2Vdo8E2wSswgBl7lhhj42/cMP+Yg6upADJ8
	Z7qowk4jqacOFcgwGt5zuHG03P788NKxGddqexOERDOmewPZSKyFGkJQOMS3JfLKWVr
	QXDJNmH/0Jqy1gx+RDgyVL0uwXGHBiSqbhzMYRJ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659508252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n80/Mknpqg7L+P4NCW97miqrHg9XniQfvzEg9uTJqCw=;
	b=fMcIESWAaTwAudWGaVxQ8Uid1XaRzC4vgOz0jB7hmZ593WOVkUEx3tBdgySnHAD1
	VeS7abbiWdnzObOG9X1CbpAEqcXa8/UlRFgH4zY0NyZyZVeCTEy4G70KOncCgbq16X4
	8qmyDq1mq6TyGsUP01dBvOukrGEyS0rcVYOaCAtQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018262665fc5-aaba3a6e-d2e0-4d76-ae36-3d833e94d3ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c4a4cbeaaa3bfe7687f8c946e9674f4868523569fec1122e072638fa2f7277f
Date: Wed, 3 Aug 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659508252
