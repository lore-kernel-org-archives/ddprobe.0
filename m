Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC78628
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 08:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650270658;
	h=To:Subject:From:Message-Id:Date;
	bh=tIRBC7PdxpFG1x+hj5SQrE7CEbuMIdejAFpNxTnAccE=;
	b=f7xuZyYamgqYMSOfc/yupBX1ba0mT+liq6hLWadHTwlDaq+JpkkruPh/GYpGYc3w
	0ilMaNqNFouP+cy3snoVJVX/C2GDbap8ZPpknhhQNVNsJSjLtnuSTf+COdaxW7zc+0f
	npAFD+VlUFPmV4bvZRvwMDy8KOmz0dkRgW2N4Hr0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650270658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tIRBC7PdxpFG1x+hj5SQrE7CEbuMIdejAFpNxTnAccE=;
	b=K2KQsJFl+JMgVlDdD+rahhYA6bKvDIt82Cy3jhpCYZnLjlsJQA9mlMYsz1Vllvo/
	dARcgIqUyuFQs7jXBxIozkSNMWKWlN5ieZtslxgSdU8nZZDaSQMydQP2Cq+sfL1Cc1Q
	fFA0WciuoKwucTt8wxzx//ss+7q/X/XxiqRzTP7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803bcbdeca-c1761432-ba2a-4176-9b0d-50a94301122e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3a80e683b2a4a050220ad0b42c5269abe2bdd357e6e4affc7db664b29da5385
Date: Mon, 18 Apr 2022 08:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650270658
