Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088067A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655316239;
	h=To:Subject:From:Message-Id:Date;
	bh=p3YpBqJl0K93KqES21hp7UJ9zo09yOql1g5/OkCdHis=;
	b=VHKUyJet8CCsPDBc6JDpdzE0twocJ5cvQ/uRlIpbAnuVTTUJjMjA8ikf2+d6y3kr
	SEdBL+Ddt5v1iHkphRQw1MFfA1Ja394a+5zvjeeleIkPjkTQtULpq4xbtjHn+HjmNZZ
	h6cv7mf0MQ4VdRfLghffTBWEqiJvHrcwCXznSzCQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655316239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p3YpBqJl0K93KqES21hp7UJ9zo09yOql1g5/OkCdHis=;
	b=eR3wvNU4KuNAKOwJSBffwhkQNnUa2Rh9zCkFgzGzT24v6RLUrRjIdkcS1aZ6oaTL
	0AeEuKAgP8e2f6L5qvB7VSX5NZYW1OYqbhzS5Dsb3NGB2nSCNrQUsSrZyvh5OnJl2j3
	367dM7Ph+ajA6zrnTbyyO7NxEEuIeoq7Tex8/wvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018168895373-9b9b229a-4c25-40d9-b825-8af287ac6742-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cd93c0a7ff5399a6a7ab8634e25105517d9313e3ef634ade915fe70cff0461b
Date: Wed, 15 Jun 2022 18:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655316239
