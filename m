Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A36D7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 01:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656466612;
	h=To:Subject:From:Message-Id:Date;
	bh=O47aRwpMA/ZgRM4NaYFRat53FGt0tpa9ckPHs8ytlyU=;
	b=ZKD/yLEaLBXZuKV0D2CNJxiyFR8QT9fUYpkBrD8qpt+6BIFCuWHmccxOcNhtTEf8
	DvMQghtnk99iWANbi4sEl/KE0Jn/cVdkOB6WbEThERW/Tc3rN1ctpGC9jMOzx0yPVrO
	7DzGxHo2nM3oEgS4i280W/0mmZ7MskGEmj/2zCTs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656466612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O47aRwpMA/ZgRM4NaYFRat53FGt0tpa9ckPHs8ytlyU=;
	b=L/9IQOBcjnF0uyrEG8P3ORpuj/833m1DGHgJFsHNWNXPmorKqEJBuUd9br+/81Sn
	DXzmGFhPJijOFot1sqVAv3YwL66/nXc6b5h8XbADirmFKUTdHqyI0y4xWW2Bv7CnGoW
	KD/RHvV2ToEPQnTtURr2yWzpmmK22zxi8WD+ZdSw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ad1aa01d-800ab4c5-3d4b-4316-a77c-eb2c94269171-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 174cfc00a211880a4d30b9e04b3279a88b14403c2159990a1bad65c4e8a4ea6e
Date: Wed, 29 Jun 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656466612
