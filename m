Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E999CEA2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656577012;
	h=To:Subject:From:Message-Id:Date;
	bh=+QoaQ6IUmPpPDC3J1duMciOC6dR92bHaC6Y2bOLbjLg=;
	b=I4S3/6xjIn3AWK0R4kTs4+XTN4oIA0sfXmFMvykVb7UMZYvWpF6hG9gQW+YLCmLr
	kqF2jHoz0/0g3t0eqsZm7qr5l/5tmR0DSDKGKAORZfWqgJJmFBPeHP7IVQaioa/eIq/
	uOGkJXD6pX+2R6wOCZ3orI3YsvxBt7tO9nQ7KgVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656577012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+QoaQ6IUmPpPDC3J1duMciOC6dR92bHaC6Y2bOLbjLg=;
	b=gNKJfQvWT83n5hapd3BILIhL5UUkACJRYVEc+nnWK3fufjkGbkX6uxQ/y8jHjpC6
	fl7J7UQLUaAdjnSSm9j/M/2Cijn35eBy83be5l6QiYINO8z4OiLG+K1QTcm4qFDpUPq
	Uu4Kd8lqQ22LsKxp6opf0CyewgTK4v/HW7wSFmmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b3af324d-db43785f-8e3e-4839-ab79-89d54fc3c41f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 310b74d1b1cb1b11314cc9c7ac880e53b9f788dc772b64c9532b0ded54f1ffc2
Date: Thu, 30 Jun 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656577012
