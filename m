Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2877E9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 01:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656551812;
	h=To:Subject:From:Message-Id:Date;
	bh=oDunCBWtynlhzmWXfpddZZ7HVRN4Nl81wruQfN1FfW0=;
	b=GNSW8eEZy3nZSNlgtzpujhrP/x0/HQVmlh+yY7ctD9AmXR2Afxx8sRN831wqkGD1
	MiZeM4h/ztC/jYZl4R0vitfRs7h8KgSEXVTFKg/YBUdWVsVHZU4DrNlGunDJ/rmnMsX
	ztVaVeT20+yuqTSPDM60FUftZ7zDtiyde4Gtfew8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656551812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oDunCBWtynlhzmWXfpddZZ7HVRN4Nl81wruQfN1FfW0=;
	b=A4u2n4dSXPLDS4SyVBSbMGQk7MuZUc/BEI2SAftIM4lkxf7ZQodlFLZ1L/TL8D51
	gU8IwCPyOBwv41e2gtBYSIgBJfxAgwaUdIqD7GGAj2hVQVXF5/5TQ/89LkM9HeXcVqF
	QdkGuRQesxZUNdfKmgn5CHudGNeQQVWKkJYayCrk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b22eacfe-d7db9cd6-ffe7-4738-a36e-e4ebd1946136-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f3aebae99cc52e644e88f2b307a696b4a339bfe081415426ba505d698b548dc
Date: Thu, 30 Jun 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656551812
