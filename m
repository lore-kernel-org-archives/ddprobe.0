Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294F81376
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 14:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655128859;
	h=To:Subject:From:Message-Id:Date;
	bh=fvqTKJSiG6WirUWXrkLQM8/n9DKW5FFI1Jq/G/S/RmE=;
	b=Yr5TaM9Ntzpfskev7+WB1aQQhJYTWfjs1Kj62+AC40+ySaRWYqyq3ADVwcvMvdZU
	nxKV1C7xGMgMlISPU8tLqY2Uyc8pd3giZy5a4/ryX2yCigcNcanX+7zqfc06YUnYz8k
	EtnTnjJ/JCP7HO9a6XKe7T5LiNhQQCJh06MkiL2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655128859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fvqTKJSiG6WirUWXrkLQM8/n9DKW5FFI1Jq/G/S/RmE=;
	b=VB+8mB6/c4bgtnOeofIf1VltwUzQNx4kRX7CdCoueqPqLb5v9mC4c6profB54sTP
	k6iFoEIP1lSPtPpHiNMt8qzx9ViU3WD8FqeloNeJ+eHk31G2xgME8T5Y35XywDWAOO+
	w1t/YSJRZJoiv4rhZpEJvaGf3btrwY2fVkqUkkZ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815d5e225a-3eace602-c51a-4c0e-8d6d-04b20918a56d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed6a84196e839d4c1213010d48535bc9932c0790773f8e99f8e06be360a2f162
Date: Mon, 13 Jun 2022 14:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655128859
