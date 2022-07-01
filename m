Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DC81C36
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656685012;
	h=To:Subject:From:Message-Id:Date;
	bh=NxEEn8ti7u3WGizLpIkarZUJTIiqH9U+ddNUt8EhdDU=;
	b=Kll9waPvMkKxsaaCgCmn1wotaJYGpu7oAGnoLnLXxCdWC0aBBB3jo7/NQkLHlBpJ
	zN2fBeHBMwvu9Ux9S3F/9fqPXMkLpwy6UOPnv362AWR8EtEe7RgXLkrRgj93xKgY9tz
	0+9nDV8moZcMFIV0sY/n68NrcUlpv6lVWY246w+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656685012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NxEEn8ti7u3WGizLpIkarZUJTIiqH9U+ddNUt8EhdDU=;
	b=HyoLJDAhm+iNpGk+gqMyY0JISLcqeL5ClIS9MFF3SYyu9M3vfvTggNhHpVuJe1Tu
	hIyPwn0zDJrU3z89MLECsyREqV37xb8Ma6idEUi3QSXAd/2e5rCANaMBAhmQAIgHVS4
	8aUwnTxSPd2Oj0jH36gtBMDF4C29uRMPpSZ6j+Ns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ba1f255c-a2f41269-240b-4a76-8ba3-a585b1cb8df1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ab56aaffda59ddef479ef09453225906d39f732d3635c5775c039097bd9c5be
Date: Fri, 1 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656685012
