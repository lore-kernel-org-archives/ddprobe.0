Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7197E
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647181284;
	h=To:Subject:From:Message-Id:Date;
	bh=jxPXEquP4n/odN7X1zoESIOUXj3pA5W4NRgVRiz8W+k=;
	b=Bqb9LQC4tZRUulVxUoEF+DgbNK5T5Rlihx7EYFLbHVOCiASNcBP8BqitC+akTbqs
	EbYTq5waNqzmgQ6Uj1gmLfqbI3qT5G1DyhBDUCzKynCR1IFka4W7v/zZ4Z6OoDqMAsD
	DsRVStXP0ScrcYIdskEcznnOSEgNvGnS0TceObdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647181284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jxPXEquP4n/odN7X1zoESIOUXj3pA5W4NRgVRiz8W+k=;
	b=K2aUvj46+os3KB1mYVWlSMxBr0KJPXqPgAYFKyKa2bgY5LIc8Ds22bBBQFZRkeTl
	9eKRwu5JmgMOsyFO5MM4ZXdHhiFG7L8WOvtD/XVxjIRwpvgkx1vmOru/ERRJYS5wRDu
	Dj5JccVXqfgiyqZ6iRivLRw72xHyZzh31wuM83o8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f83a7c575-c015ed80-4900-44be-9e86-436afef1030e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b4bb828328e13a782bb3224f182ed4b85bdab74e17b908b5c6d9fcb1836d9a9
Date: Sun, 13 Mar 2022 14:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647181284
