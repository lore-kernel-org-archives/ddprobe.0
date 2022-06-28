Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033703D6F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 16:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656435412;
	h=To:Subject:From:Message-Id:Date;
	bh=drgj1JSgsSGsfurBhbmDe7+9x4b4qr/oZ5pomAdMyeE=;
	b=NLbgpvM3rP5a2jUOaBgjVJiREOLeUKxn1klg55NNj8O6QhL+4tNpaMh6zF8PHAor
	2/O6LwdZMe0r2pdy15GMPZh6CqpZI1nwgQcHRDKwZKyI93Ad/+FYbCjyhVSNRhCWHv5
	C8Xj2J/rIpDzD9mRg1hNh4IUhWyS+vG1Q/Fs4faY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656435412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=drgj1JSgsSGsfurBhbmDe7+9x4b4qr/oZ5pomAdMyeE=;
	b=BxI0IuQ19EQ1Bc+ULOtrUSBxpvVk3ZCkvw5S6X+Obx6/wfjVrVz75Zkr4UeM9Nf9
	xq+jFq0meelT3R/5E+vbxabl903dh4nvhob8HCp7EY1mN7FMsbIFO1GEHiO8PKclQd1
	SLmqYMsQuDarEEvern/HDH3rfn0xR6rIWsYliqaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ab3e8d4e-22e45f1d-90a1-4455-83e0-1cfebe830ba7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09badfc9492d5196523e82c7c4debd9466b24d1be84c11d6bf73ab7e38583dbf
Date: Tue, 28 Jun 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656435412
