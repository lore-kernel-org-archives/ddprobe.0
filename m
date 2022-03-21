Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0A156457
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647900685;
	h=To:Subject:From:Message-Id:Date;
	bh=rxX6OVNgPwo3fOtEmSZelBR2/0ZnKcCixtLK7YIKwcI=;
	b=XLLF2aubeMY9s5AwN/HTyW/JTZGaDjxYYGRatFmVbGQgQ8t51qFGoBpjt2fNOiKZ
	hb2YK5dVkTl7xLkz+UJo0ic6t6uCkiSWKivEeCPJsGu23JQVxJLzpEnDi92CSOeb/vE
	yVqBL32ORpvWCn4xMIdy9Eg0M+saSGRfwqPcm1so=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647900685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rxX6OVNgPwo3fOtEmSZelBR2/0ZnKcCixtLK7YIKwcI=;
	b=RHniw5v4q+jEZ8ncGVG3dGurwWiSmGLi8kKM+pMTSM52s8HtfSX6u22oR2zwEtR2
	8w1vnI7qePFn6lHkELQ0ZZQ/6CZwiXbKsb4+mBhzes+vR4wIJF9+fIStUTXsLhtzlOq
	DjTpJm5NDaFlNnzRyWzU7PbGMiRYpcrxdi+DUE/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae88f240-8bc644a7-b492-4ccf-94d5-cbcd4011fdf2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 735351b49249247393da2d7883ee68dcb17ef74c6d57e2e1620264c958373400
Date: Mon, 21 Mar 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647900684
