Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120AE7E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 21:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654378259;
	h=To:Subject:From:Message-Id:Date;
	bh=JITcLbGSlXyRDQvJMZcCwv9jpkvSBILcFkgpL6eDIfs=;
	b=GSHtAMlPO182cId9Iy95hform1MkkROvsSS5BEmza+2RsEpH2zvqAEb8bQTqOaVy
	Qh8LrSxtmxb8OOzulcPk1NP6EmldnUHvgODbaDIWsr++rZm4Tyf0gXEKf3iVW1Dsf/Q
	ijRqWekOeJN+6E/IQGX91Ir53JYJlGAWNKDnxnwY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654378259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JITcLbGSlXyRDQvJMZcCwv9jpkvSBILcFkgpL6eDIfs=;
	b=h6mFDFa2w2CdCLaGneguWLG431jZRXMUC8g2vUJk1iwIvyWTcHH4vXO/mo95ldSG
	N9HNMrJ/8MJBcQ6IcgPVhuzy0m3INGsuKEw5eJ0qHBFQuAgXJvVdbuO0LMV8xmQmV6s
	xgQf7JGUC4h8cZ39FZCDelI9n88qDkmuPhC7NKWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018130a0e37c-00620f8a-e872-4fab-ba7e-005a5e9f3e0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b12e54f80de889b809a27def8ca6af9bb00b36a48e259eae1e4f88218a13b69b
Date: Sat, 4 Jun 2022 21:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654378259
