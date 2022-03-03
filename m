Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E3C2F21
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 18:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646331385;
	h=To:Subject:From:Message-Id:Date;
	bh=tCON79je5nG8YRMTPl3fhj+JG6vKH1s5f6Po9doaLx4=;
	b=EqzHPlcw7iXtpN2Lp+hgIkKxRmKcpmuA+DPYDo6n7Gbp/2EE9bVPBakdQ05uBYnK
	JCHwjj0TAev0FJntqwu+vp7EVGLLfLbbUiZhRbZVCvD/LvMQiCv/bBQhEWbmKRkFgM/
	XKHdzEI4jiO1wkgtEvOtEO+Sco1EYTUcyRajoIbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646331385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tCON79je5nG8YRMTPl3fhj+JG6vKH1s5f6Po9doaLx4=;
	b=cIodNF4WZUW9N4GTgEGo8XtXPj88Xf4wja3HcPk1JXv+yxbAvSO0AieCNZcTyqQq
	QjLAcOUGHhVlbqiMM+6oFOUKH5qpXCglr1qzHeKQcWDsM1PVLmkNqRS+iV/kmKK/REJ
	qvY63p84MKZQjbk9ZwCnfkvJcqbK8M3cYtU523tM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f50ff5401-e4eb8b57-69ef-4e1c-94a5-dec965fa0fb7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc30cc41b74b99f4df342f020cdc9a74a2c0d1c85ef5417b6af71ce50d73979c
Date: Thu, 3 Mar 2022 18:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646331384
