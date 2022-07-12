Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365B923A4
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 18:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657651012;
	h=To:Subject:From:Message-Id:Date;
	bh=zEWxK0aswJaW+VNyToxX6W4YDtGK+ZhrC8/B2STxBDE=;
	b=BwNsI+JZMLT3YN6lkNfVm+yZbtCNMsvIiiF4w8bDW7lzMcOdDssbEibG7KTy1Rub
	942T1qK8OojmQr3p1r7YfKKi5rporRIaQYlbgYAhEkFA2IMBinJ8XrL37GOQ2XKU3JV
	hrH2at/+5hXrTFNljEqh5lZNKG/kV9NQY29qmfyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657651012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zEWxK0aswJaW+VNyToxX6W4YDtGK+ZhrC8/B2STxBDE=;
	b=SeLx7X4u7Ilm1qcjfqBHk8iwWsg5puNmAWof4rJ9OVN661+bpoYXALU5xYIkLq+m
	eoxY91Y90iudLm3vmKwaN8GMN1FLczywSGAGfU+vtO+ELABy6Nf1qlwldUOPCfpzfvY
	haZRldzK8qisEL91zcCqwjHv/5KjJZ9YSWJaASv0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f3b32303-fba6ac16-5f92-4a12-841a-47d0178dd22d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a95ad418761b272aaacbd6b963a85403620fd074c66a1fd98b60e73704587ee2
Date: Tue, 12 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657651012
