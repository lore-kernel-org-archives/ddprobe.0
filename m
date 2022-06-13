Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54261119
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 09:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655112839;
	h=To:Subject:From:Message-Id:Date;
	bh=DPsQAISbmfcqXy3g1ForPmmUCZSLsvAlwfFiFZWeyOo=;
	b=es48r4Q6eB/RgVDZds3wQy/WabaXFRSZ29cnRK7+9RCGYwdmTlMEmZI6oaMldjMf
	Fu0SaxzQIKzUUm1ckNPvnCeaDcdII2lhCIUTl4pUYnU8Wie++5PmJ/Lqztxd7GaMLOk
	aptNU7rFGPeLSiOwBf3X6/9g2DSRuyD0JkIu4vyQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655112839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DPsQAISbmfcqXy3g1ForPmmUCZSLsvAlwfFiFZWeyOo=;
	b=U0bbjhk1tllNzy6pugGTlz2O1eNGTN0n2X9Yh4fEyKJyIxVF2TDopGOwN1Q5BbHw
	v7FtNZEiP7I4HyrPHpZfCLWuIqElHeaF8Lgomfx1KMwS7iha13MgdggLQWEoBK0bcLK
	YBVCVUtehXImgP4x2MekQJQARnxobA0Pl5uCZj6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815c69b031-0160c7c1-eb23-4a5e-98a4-d8810ed95237-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24dbf27c113d62be21acd6d40a51cf64ad4bd04d9d612cf243e9d0af88ca93ac
Date: Mon, 13 Jun 2022 09:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655112839
