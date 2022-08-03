Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E7514C66
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659570052;
	h=To:Subject:From:Message-Id:Date;
	bh=K0+mWkqmiBEAO6yEz5EHh7Z20kxpRbTdlBGFEeC5Qlo=;
	b=jGBtsCP7SRsdkmUxl5vFqO4dJ7MqT8A6M+d2uSZgFLYG7qCUSL6izh9C0N5yadGc
	/18YYnPUOTiaah0/7SOggB2yr2Z9J3Q13yJBCvEP9M6i3r+pW7vCG1xTne4zipXKO7k
	nh/bT7MVx444sPs7RQouwo59ZZzeeStWC+KjMaLw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659570052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K0+mWkqmiBEAO6yEz5EHh7Z20kxpRbTdlBGFEeC5Qlo=;
	b=CS7iC17dGoS9b++LcQm2pnOTBwkjmy6K2WsKwnVive6Yjwfep9j/YRDDlkLHx3Tq
	mXP+Nlme+1dreOr0zeXNSZEzzcHm1WovXW4rBBfo+Qmmnn87HV25lXLf3zK5Gnyivpv
	YHNvbvrPRduUOwWeodVVKtZqbJ9dBMGQMfpO5tHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018266155dfe-26091b4f-0d55-476c-9078-fdd76e3dbb2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc6d90b28313297899d0c6f053d6a96f46e76d66cfd6ddd0372bc94f0719ebac
Date: Wed, 3 Aug 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659570052
