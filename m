Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3D423A1
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659612052;
	h=To:Subject:From:Message-Id:Date;
	bh=QIHlMPa/fhQdjY7oW6CyOpZSdEUNQhbjagkf8FmlOZY=;
	b=B9ZnlbiLfefL2fpl/QYSpSCZRO5z4i7pla3jHve2qRtUrJGGqE1ifyGjAxdygY92
	LKFeEd8a2yFgxl/6mtzIdjFEF9wNsGJ7Kb7bc+Wen5wiVrwuxRf6BQAon9jXHZzA/lM
	g5zly/RQ7WiLVxkAcwUVO6BTSExLMdn5z0a046ig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659612052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QIHlMPa/fhQdjY7oW6CyOpZSdEUNQhbjagkf8FmlOZY=;
	b=cm9dvs2Os+5Vat2BPmMwv0yj4ZZlCvzx5nm1TiGH27tM5HTYsRVerPRLIvANv0Ou
	JGbBXDHHLF7RluetdRLo+p2TRhFgPUalcnFr90YHfeDxGbJFD9IE9/Q9aJIDd9p676e
	zj0At6JUT4iBKwkIHsg50n08kpvS46o6aRFJbBDw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018268963c4b-a30a828e-a39d-44e2-96a9-703d4bcb0c20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b68e428b58dffd988365541c75606745e4518471469f0b53d1431292051e1824
Date: Thu, 4 Aug 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659612052
