Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F61546BF
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 22:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658701012;
	h=To:Subject:From:Message-Id:Date;
	bh=cZlB93w4q3TXs2TTZAoXMnzUaXKgffNpVWjJ8DwQ6O0=;
	b=d9ec0yRW6PZER7A8Ss614xtVqeuRfRLr/B2H2LgFSj/aJBeYNzLuk3TvTxuPvi6+
	mnF0ktenUhRCepg2oCai6wY31ztR4qVmENWsCGtycgv+ead8ftUve5MieXwxBaOyyqL
	29bp5kh9G+RKE8I2EwmbkCSL6UxPEJAhg71kvaXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658701012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cZlB93w4q3TXs2TTZAoXMnzUaXKgffNpVWjJ8DwQ6O0=;
	b=HVp36NOxYX2SigPD+UIaqS2n161Fg4jKJZUdEWaQ7vTrM07IKi6WC0g4ez5HNF1s
	r4d2zZyYI0fAO4BFItFOzaUe7x/eaL4KW2FTekpoT1m5MOBHEwH6N6wDEP6sGy4kB87
	mHzjH+4um5udSk3X7j87Kkj+CcRQlN6V/Qfpy6/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823248dd26-07027355-331a-4ba4-9361-e7e4cc375ca7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9302542a6dd2131f1ef23a9b9625222a11763b6c56dbe8677101e6e715c18b37
Date: Sun, 24 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658701012
