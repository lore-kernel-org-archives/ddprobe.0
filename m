Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572357EB
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660422652;
	h=To:Subject:From:Message-Id:Date;
	bh=6pxAIFdiGKFOfsBiD6gAqrkfqxjxzce8rbO3g/9zbBI=;
	b=P/Quc+EkHQAxWAxXHbbrxAwYwYSlmqCU4Z/45WLSBeW++f0/YAJjKc4eqE1abfJF
	SzP4Rzbk1CC6aFAU81jVRt2HLIR6r4k9fFa3d+IOGv1A1lKxU4TLKfj5l6Jl2iycIvp
	KTKJB/t5ergqEXmSbJk0eWZ/Q3CnXSLGwZOl8EZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660422652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6pxAIFdiGKFOfsBiD6gAqrkfqxjxzce8rbO3g/9zbBI=;
	b=NEoxKB2LVuBhAfZ4/GhvapbGxvNKbw8YHHFnzJvZcM1hIarkyGeCyIbpj1nQridB
	VHo6suFfoSzp+Yz3KG2d2fjclNn0OZTk0Vq+RzRxkNTh1IgxFfGZFbSD0ee8QlL49UZ
	4z2OzE/fIyo9uFVl1zzjMCjg/o2Xec83m+QK/pxE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018298e702e3-62afbf03-a710-4789-8638-93a4eabcbce3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a69c435bfe26c87d71b74071375a98ad6cf723e05ddd3ca33212c5c1310c392
Date: Sat, 13 Aug 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660422652
