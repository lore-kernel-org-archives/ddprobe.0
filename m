Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF707A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645915284;
	h=To:Subject:From:Message-Id:Date;
	bh=Fr3Pa6ak+aRB26/B+8FUx+CISICVdwsQyBKUQFSL/ew=;
	b=FV9FuJN/c/zlvpmirB8dpPrmdMFm5uREM3YIi4RYQ1wBnCo9YYZcjybOsvZw4PT8
	p3NXmpQOWoiXV1kBMLQMxX1c7HrIH2jloC9AFhJI5wTNUlsF9w+qm9BjFCGbO3ty7vg
	Nc1yocR04vRBYllbUN2cqba2AI2Wb8kzVM9P4T2M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645915284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fr3Pa6ak+aRB26/B+8FUx+CISICVdwsQyBKUQFSL/ew=;
	b=fKJp0JhIyMpJwBqphBbt7TPzOAxoN0LCWFIuBJ0AXZmAmdgbuL1YMiZdLb1h4zGI
	yoyUUD6H/7w5Eo89Lc1Euz5/Jhxy0wcCOXdwqnT7YM1lklRcAz0nuJ+laL2tGVjmXs5
	XGN+6diVUIGN7E49Y/S/FEQnS7iXu8mclCmgqFMA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3832250c-3724a623-6d58-4d10-98b7-1b86ee22c047-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 639eb2407fe833ddd40c70dafb9d87025a9f754624577b6e2742b3fc884d31cd
Date: Sat, 26 Feb 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645915284
