Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDA32F33
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 18:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657651612;
	h=To:Subject:From:Message-Id:Date;
	bh=0ox7eQAJfwTHb5ZJFr1HANV1akty+XCP9+oETdpMe9c=;
	b=ZG1q14QlZekmcT1FFMJpvmg7G87AZL0SI0PM6F3RWtv+boBnLj+O6r8ZOxfILRFL
	UZnX1kEE9Un75xLoeGmmDVgS+SZ448QqSa64+pnifyD8BTWvXPB5xluUiUJxuThzWdj
	KLZPAeGtsbEHzW4IH9Coq+Fa+aWrnWJ3Ngyj5bT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657651612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0ox7eQAJfwTHb5ZJFr1HANV1akty+XCP9+oETdpMe9c=;
	b=DeyCXqRrkTXGjXii9LkrJACwM3/fjbP7fSEgRkegGC6Nym2CrywzQPB4hPcswDAC
	mVurIRRwsRQ/o1pMfPBSLxnAqgEOmYCpnv+3O22V5vzQ78SpNn0y53g+VFyDJTcKa9a
	ZikPJfzFkoSefClTwz9JWZfxsYR70jsPqwoTF00s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f3bc4a65-3b59d5d1-0e7e-44ea-9578-3d86435efaaa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73e1a3a72c9143b391561c47bcf2b5f2ddb9a28058c2f0b0029e7e81fc380223
Date: Tue, 12 Jul 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657651612
