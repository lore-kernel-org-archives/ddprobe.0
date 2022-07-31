Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6073B15A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659241852;
	h=To:Subject:From:Message-Id:Date;
	bh=/DnDruAYENOq2HRJa1OTDlEd5bqRQiQryrtfsJ6bReE=;
	b=ePr9bC/G3GT1N356vuksRX/RzhBVH0zZrLFQx0U4cgrqTFIMGnH/lkbST343sDOI
	CUmJbEfoFiYWBIgk1m1dbzdY8yfU8TxuG7833vUPiqXN6M57Zk8ufXuseiUhyd2S0lZ
	P8nDs31bHMqrk7YBT62QvvLsfL8m6kzb9UYcyMfA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659241852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/DnDruAYENOq2HRJa1OTDlEd5bqRQiQryrtfsJ6bReE=;
	b=OJodZmN21NijGv/wOdBtGmEgA2iN3MNN2wM3/jFk3uwmm4xm8lCSzmGxquZVgerY
	CaiPmYORMfp4t1l22hlYYrz8K/htgj1eAAfHPtBcERzvsh25WVz9aSNEMK6PIttjrZz
	BymimgeGnVgnQ0SFzr2TG7fu//BsmAxnn7kvPNdo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018252856eb8-ea025b8e-8252-4f23-94a5-ec4a7a18149e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9951804c326d16690219f569c557df6f4e99435d36c1c17981bea1dc0e137df1
Date: Sun, 31 Jul 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659241852
