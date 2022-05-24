Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED80B7F4
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 08:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653382439;
	h=To:Subject:From:Message-Id:Date;
	bh=qsgarTUjnKwsIKVwadkcqHLXIkBRJu3ZRwJcDYV/IsM=;
	b=Nj9kZ4qEPUZ5RepB8zD+7zOQ1zh2yspLPvhk5/ZIwohbNwIVQYWDftHyxWA/T9dO
	jz5kEcRypjfIm7+RnRkgrFN6YfEaGftHAzEJFldJXTIl/kscPufzsWBy0PHWAUZ5MYb
	7Nnx/TVCRlNiMtdRygDBdT5SlCfCw1tRr/sSobLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653382439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qsgarTUjnKwsIKVwadkcqHLXIkBRJu3ZRwJcDYV/IsM=;
	b=f1JWH/+dmirkAUaKf1DC++2vnSK0tpUq9wJWXSG9fpixdu8vMa6HOxbOHAzi18VS
	6EznufetZvMzJ4bYXCJ6CWKS1HAnd7sdx/O923qxHpF+pwaBvr3vw640kSkkcBoQ0+b
	FYUpSMuQInabjGpOvfZWF7j2bSUVlLxaXfDTRfiE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f545e163-0328dd35-0b78-4862-9034-e5d6117319f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fecf098b7a981ee5900cf936b8b1b7ed6a3a6f470596e2a856f4f9b27c88849
Date: Tue, 24 May 2022 08:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653382439
