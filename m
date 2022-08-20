Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813AC610D
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660977052;
	h=To:Subject:From:Message-Id:Date;
	bh=WmTC1ddYhzkq2bC4Bwat80fe75BrKYB4lP78NDgOW80=;
	b=Ye4RahE2S/KIji75QAJ6BTiNpf5kaWrldavq8nb6jAk+Zegln3Ce0tcXuH3fel9S
	SCmfdwaACeelc4Eqv5fOhoB7mIjn1q1BUO+gtA+AV5DaizUs6oJHouZQkMFG6jDLRP2
	13TJmBFLENEuz0PTfsN4Q9Swt4wYBpfwlPWU7FeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660977052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WmTC1ddYhzkq2bC4Bwat80fe75BrKYB4lP78NDgOW80=;
	b=SmBBuBPiEppBZwJnCx4x2yOFvVR++d45J/p2P3BxGDd3IhFMcSaApDOkvWzT1mL+
	03jIZG4+yTh3XfR94fmb9MvPbeWzWL/BAkZIQqgaqc84U0OrPEAoSzPGusiG9y0blkb
	jXtxB9r+gGOuLE5NW5DeUAzod+JfSUX1IU6EaeuU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b9f27bd7-85fbe44f-743c-4fc3-8e08-769eb9b99a8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1484a518c92139e3b7606cdbcfe5d61783f08741f024c3b80e0f81a6fde6289e
Date: Sat, 20 Aug 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660977052
