Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83D513FF1
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659216652;
	h=To:Subject:From:Message-Id:Date;
	bh=iLUYBoGpLKazxEA+KK/iEel7QMXWVKqo4LvkiMt9Vng=;
	b=DayGxMImzlnzw+U4AbjrDl1UXhyKrBktzsbXq5/MEnXASjhBe+IdkXyMfsiJv5gg
	fAzZ2D85iapPdfw9flcB2EpQlrvEEUXQX0cjWn0SCZmRR1/4/oudP3BcyaahMIxab5a
	siMxO83s6PR0vqR7JbzFpdX5c6w5kk57pC0iVa8s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659216652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iLUYBoGpLKazxEA+KK/iEel7QMXWVKqo4LvkiMt9Vng=;
	b=Tvxc0qTimWEOVOpsAsGmuFXRJ7e5FK3CR9CQgIilKlg4yJ3hA4NH3mrqGBnoBhh+
	g1jOeM+M4sUiqHZWN4dIC9qc72FgItlWbVK7GedTmi47RalgX/J3Q4qgT9PzR7grGr2
	FHPSpovrvbMvsK3i+mU4PvaWPTRRmPSQMEoyCFn4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825104e924-1b46c9db-340d-41a5-bad2-fdfcba4506cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c0827ad9ac0f17185238dafb2bfe07fd113d830995eb566f13c128cf3522714
Date: Sat, 30 Jul 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659216652
