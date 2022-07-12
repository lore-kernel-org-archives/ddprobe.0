Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0341F23A9
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 05:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657602412;
	h=To:Subject:From:Message-Id:Date;
	bh=MyMgwMT1QHpW6hDoMlmqSsfdyHXtR/pbPpAO77doRE8=;
	b=IDK+in+EegRVOntqkEx9nA1HN+poIuLk/fOL4CIWK1+mMDoI2ibELqKrfLuDIdek
	7lCxTdBoqFXOY4ZoYui/U5RbtU4zgESVo1HAlu3LKC/8ikLLPQID+gcdE7uiSUCtPir
	EdDsURXjjrH3mkZC7XM8EGLflBBfSSsxMMNqoEN0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657602412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MyMgwMT1QHpW6hDoMlmqSsfdyHXtR/pbPpAO77doRE8=;
	b=Hc3O3qcihWWvgK1lIJQeygPcBDZ43zSO9KGQowTSTMueeTxA6L5SnWb8OHc1X5wk
	Pcjcwb5FGTIkGP6UUrjYBtR+PL6IGX9b4rK8M4oG/dXlE40jNkLYuscTdUz4HKO4DK2
	RCUZKaCa7U1sdwF9bCXeFXbyjKdHEnoVsDTK2tPw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f0cd8ef8-28375588-28a4-4879-8f67-000d9c57b79e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86bfb6904bc410b89dc1a1eee422206ac480f4036ab400088785d19e07788e99
Date: Tue, 12 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657602412
