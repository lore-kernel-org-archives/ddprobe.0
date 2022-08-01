Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC467F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659373252;
	h=To:Subject:From:Message-Id:Date;
	bh=2Wr1aJhxv+3h35kX3DxZ6249s25sW3c+FXI2CZQAZGs=;
	b=DQktkgDonYMxBZ/v9JNaDLg8/hSWkI+JEFNGOutTLEBxzb9YFNnqqU1sA8Tj6ELM
	ZlJti4n0+XYwzdkXkk+LkWAJFLM8xaoOwZXzk4M4GuQm723IoqMZClWnPD3g/iwVlrn
	DrwgmtDokfaPmfdwBSukYzfLqNo3UGN5astezSHw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659373252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Wr1aJhxv+3h35kX3DxZ6249s25sW3c+FXI2CZQAZGs=;
	b=H73atQU4LBzhVlkWRqcqS49GJXfa2tNbjORbH1hw5KXsKoWdXdbOAjDS1qh/Ysj3
	LM37m97EOI2NMRjTLDQ6p2d2EH2jXsaMdMC8C3K7R1yZnV+02EjxDytQ0Z61FHCRwWj
	vFBsud1ujqJRWniFsBXDpBP/JXIqVEbGMsxfFfp4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825a5a6fb3-b1860622-0158-456c-b95d-412ba27d6a24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f87827cc94a0b3ef8745c4065dc59f5f59248e57b3d4b374ffa0728f98340715
Date: Mon, 1 Aug 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659373252
