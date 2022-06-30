Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB81813
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 04:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656565012;
	h=To:Subject:From:Message-Id:Date;
	bh=OBOpLR1pAB01X23WpaHibzGSogUvjnh3xeDpBJW1tP4=;
	b=Lvhh9ck7OLEj2NDhXgNJzEfnNtzcYCgWQs4u9lLHtd+YUzRMEfd4bDld5AF1Jjd0
	42yW+0OYSPlvlOZXtBHUz8Vn8sHS+P6Qrk/zMqQj4PYknqJus5EdUkZMH2zFJPf7TEj
	LlPhnDuFTPdpE9Aom6VIrnw03ilR5BPWKJgmZRso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656565012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OBOpLR1pAB01X23WpaHibzGSogUvjnh3xeDpBJW1tP4=;
	b=JflTks39CuliVt0eZFQ0dQOPpH/Zs5v/BQWsvwvTW6+sG0iKh3RTXLtsTDYmau7+
	ddrvCXGb0sQnVqOa759jUm3BrSNuckhac6T+XIXrkFt5pknBQdVFywGrYSZ5ToEpim+
	EM6cqjbchdAXlM8Xx3NYh2d33aP0aCgU1Cz2rEok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b2f8173b-4e526acf-6892-4e45-b47a-e24c51f3cdd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c37e4b67e2b15060faf1242b8530ca27e6ce5d2a877026c9f497f4127e3c941
Date: Thu, 30 Jun 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656565012
