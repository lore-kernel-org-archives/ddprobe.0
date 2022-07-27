Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF23A3D
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658903453;
	h=To:Subject:From:Message-Id:Date;
	bh=iidC2D3HZNgws9Zvs/zRTE489ZcUSGEbd+Bf6fLoMfg=;
	b=k3fvyHQPWXPve6r+fHYekIjZCvzzqpZIFSaSt+icpcZyhEnA1JGTP1+A5QOHnAxV
	ebsVXZUmqjpTsJ5dFhyQOZJOeLuLIUZhxNKGJrUdnOTQjNdvRBppFEEZ4kObEb196Zz
	8OaViT8jBBbiluepbKKymcsQZG05DfUUK6mosqgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658903453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iidC2D3HZNgws9Zvs/zRTE489ZcUSGEbd+Bf6fLoMfg=;
	b=JZlPJABjRJWsKgs8dmyjb9JiiA0I4Pycbas1/KfSEfXmQgrmMxWjkNYOMmD4uL+E
	prOx6CbsGoDCQ/oRHod5OX/I8p4rmLY72+oUZ92QdCtkDUpCNJ3q2TLguUJYXqIv0rb
	e3ZfMY20bZunmydSQtlegPIxY8xQ0B7TZf67ECis=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823e59dbb7-50edfe6f-24c9-44d4-bcaa-62680f307a69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec7adbce835065b2c9c6da38000968ad10af7a3519a84c32feb0b4fd48fa121d
Date: Wed, 27 Jul 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658903452
