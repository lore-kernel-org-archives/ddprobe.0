Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C7D3D6C
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 15:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656517012;
	h=To:Subject:From:Message-Id:Date;
	bh=qycQ4SLkh78jb/+8xdSdJksVDpOOeTLd4LQELtvGVEc=;
	b=UE54qUFQsDGnqLFDkDF5HNz3i/toh+HcfBpNRO3E9dqGRwEqELB8UCC88P1fxs6n
	B/kCkH7ac1C1tKnFrRSwwn0ptqhcMx1HgMaE1whOHSjVPO/eNb2id4u7xtdg54LeOqk
	UR2O0J/SDdaar4MmmrB9r/4wkbYuKPm/jK+GxG/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656517012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qycQ4SLkh78jb/+8xdSdJksVDpOOeTLd4LQELtvGVEc=;
	b=Be6XvGlaJYZ2f9LkW1Jprz2cU+G/UbC6paImr45IGQ+a/GS3wrk1HgRxRvJBXqNc
	1ySWfLBPRBJB72KoG4M5NhL1fUnzLTPqWwctmoT7H8GT0kI68K5c7klDRbnlcirvX9r
	AFlqzPzqf2BnQkCsnH/UQE0xPye6FdCNAYvI6laE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b01babc0-b326abae-a8f2-4dc0-b1af-86807a7bb1d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6d8e4453db9e761e2c3978c0627aae5ff7b0a0026799482d24857b1b18e0b34
Date: Wed, 29 Jun 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656517012
