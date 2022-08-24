Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B45F1398
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661337652;
	h=To:Subject:From:Message-Id:Date;
	bh=whMycQwxVTiGJZlygRewwyj3tcfpEZ3cGYcqSs/XgJY=;
	b=bw/5AbCChlbApL2u3XssP1BqsGqjObpJ9vS9k50GN/GskMCYDD1YhkwPFSgaZCu9
	0PApRnyLhpuogjYUnj1K9qn5IysT83mI2+QSavakWDk5+EmRohzjeQ6bpVvNwqb50A+
	48670qlR8aMlgNVZp3cpCb4w1dfv4rRvt3k46KEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661337652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=whMycQwxVTiGJZlygRewwyj3tcfpEZ3cGYcqSs/XgJY=;
	b=Jo5N4dGoqZbkRScnhbek8FdEkDrKbEJZuf2OD5WhT8iI/eVzYRiq2/0yU02AnGQU
	xFbaV1vz8qNEgBtVyvj2iWwBGtTnrZ/JwvE8yuv/8SMypXVWGlumh3AJzNtbMJmCwBy
	T/GZIfXEEv4yo4aJRIWALqedWvxArnumIi2ec0PE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cf70cd3b-d77e7dea-6072-4665-b753-a502e0daa888-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d3718e1f526f004f43f523bd4abe50d9b9b4c4da64644e22aab51ea72885c05
Date: Wed, 24 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661337652
