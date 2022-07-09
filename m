Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE177A
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 06:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657346812;
	h=To:Subject:From:Message-Id:Date;
	bh=gA4BtkwzqZCQl61evG3VdRUrTH1jZis7/cBqzzfs0jI=;
	b=clHds4qbIt/x05ExOGZjgEAdJcFKafUnuu4mTipGJFN/TlU/HvMllw2aN83swDVZ
	S2HVqrA0VmLFsEalqJSDgJ2RURO4lq5EMcTmZ5zBenguM/SeoZ7gYFijeUJmLCFMRiV
	yv2Z76FfawJYeE1t64a5JuWvIFtDvdjDy5GAmEmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657346812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gA4BtkwzqZCQl61evG3VdRUrTH1jZis7/cBqzzfs0jI=;
	b=YHT6yg8ncJnPRvNoR2kUgdtSAI3LVUEN8sqaRYJknBf1cDgworW89PMWwb18/Wnx
	Oxlg7IfN2lwLTX7+M5uSvfaeuSPRXTf6O4HdP/OqkDaVSuhHAz/LyZO7Cky/imWnY5V
	KoxvKsR3XiF3M4QOKq1ZoHs53POHjAsn9NAAANqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e1916995-e0eaeef6-1863-476f-82fb-4b745a7c980d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04cb0d7ab8a590653c63fe274db6f95b9651db776fb66b0436e93d1eb831640a
Date: Sat, 9 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657346812
