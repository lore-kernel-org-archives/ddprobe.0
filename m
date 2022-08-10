Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABEEA5CAF
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660118453;
	h=To:Subject:From:Message-Id:Date;
	bh=GvnscyANs9eMN96j+LMCBwIceG+T7HnqGxxwDiMovZs=;
	b=BPD3vE42QjV4oegv5QIqvJtCO7F84+j9SA7eXpFH0xDF9Er1uT/p9KppOSNfmeAS
	FjaBK85BuoEr6mT/GJMMtXdJkTUma7VSAi1r9vPdJ8nbIdoPNhnQn27OxsMGybJ4Zil
	LA7Hvg66RxvYc+0buqc73X9mtOw9+I1M9REKKmVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660118453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GvnscyANs9eMN96j+LMCBwIceG+T7HnqGxxwDiMovZs=;
	b=OB53huCw9YzWP0rv/BIyyVKQfyM9ojsNhQnN50OLrG9HvxPUJtXMrKa5zYfCZIE1
	goEtlC/bAyPU9t5lw2IyAbMSiQnyZ8/+wN+h91BnccydP66vfn8O758oGOtA7F6YL0H
	gZ8WhF0F6rKfY4XID8jVRyVx3kdFaiHj//8opF/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018286c54972-8e9ed31e-1934-4e7b-a04f-7b233eb7ba48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad49fec6aa0e74af8068ee827bd07153b73eb7a43309c85ea630c0a5243fd7b6
Date: Wed, 10 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660118452
