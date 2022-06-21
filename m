Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B7E7E9
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 02:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655779079;
	h=To:Subject:From:Message-Id:Date;
	bh=Cqymfv/+g6mHy3tipbdWouH3OPhuSo2axgxfcwkOw8E=;
	b=OTFOnnFTNkG01ME+Emu0mUVqLGnLHowTJgaZwzsUeaF1d4dmqiLCw9EoVIUjwwVe
	Mg2KiT2+jny6hnhN7CCl5yC4p6QLaHI7ooNy6B8js85koPYHdrIqlpcyIZ0Xi8XvnE9
	yX5lIgCCFmdMnIV8+OmA8C7+qgfftuk/SCXa1BMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655779079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cqymfv/+g6mHy3tipbdWouH3OPhuSo2axgxfcwkOw8E=;
	b=GFUF5vBYrJ/VUORKm49mSiOrtt0fV/EW5FPc8VHXHXFN5dUj/n02+ywXFvYPtpte
	giCUxA/5Xx+Z8a2KKvNysldqbVvJjmh47fmkcPYb7a4TzAfNuSFFnBDhNnfw7jixZAZ
	NCrg3VxwfG5YQRlVGF2PQMBmmZ61x8NynUVpKR/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181841fb44e-cdad2c36-ce1f-4fa0-95e8-cd386f6eb5de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17f29cccb07c51e5fae5a63a4a43c7475842522ad4afd118d6b4733c8325507a
Date: Tue, 21 Jun 2022 02:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655779079
