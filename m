Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759C066A1
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645543585;
	h=To:Subject:From:Message-Id:Date;
	bh=aHuDlroUHGtMdL18EPb6MLDO5VEnMBd3JovZWA09oeg=;
	b=XdVbc07ifI48dxK0UOT6Pto+fJamnHVMBrJXn/Ljoij6AwsaH7nAIofauhE/gKmn
	PW9iq8CIkkrm0WciglUNeEsarspCRBgV5RBiVrfDPUg7lGGnR3zH93Ef9rZiGM7OwM/
	h3g23d+tiNn0ZBYq3+Eg9p24g9+e0J2pr/04/kuE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645543585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aHuDlroUHGtMdL18EPb6MLDO5VEnMBd3JovZWA09oeg=;
	b=Vgp4sOEs+xR3Q//jHn00H+gt88oUzUawe0iFfXjn7JPpDut9TBP5hvQUInevigbC
	3YH2//n5YpcgbzdWcjXm3BUE9vBeGYweTWDb50VFJSP6T41+GMEVQSEq7Y4j7Ff21EZ
	R/MIK5t19F9vZbNKpCyzg8hC0DEXYVxu+sVD+gso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f220a73ef-3188c3f5-55e9-401c-9502-09e4bba6a0d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4cc69647395b8216a5048b38df294d4506841805b75e70d3cb11070f52b2a94
Date: Tue, 22 Feb 2022 15:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645543584
