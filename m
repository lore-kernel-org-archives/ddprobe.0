Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D1E7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659044452;
	h=To:Subject:From:Message-Id:Date;
	bh=2YOVHlnj2gB/RGEe8JlcSXk9O26X3uSxJCRFSoJQS7o=;
	b=V5H5sZajRKiQ22J6WMb+B4n3PaRycHhhN3sBmJR/nBbO8eLTL3AVUx6UAiKpSr63
	EiYnJezt4ttX+ri49Rdy4hVbM8IYtnGEmwpwtNsCrO0mD1DcNKMKe+aK9U7yBVyw5FK
	Ro7UYAaU5De4vMsdqSf6AW5stoVmD2v5BVTvnp/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659044452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2YOVHlnj2gB/RGEe8JlcSXk9O26X3uSxJCRFSoJQS7o=;
	b=aRVhuFtwLuPGsmX9tQcnLZKtks4xYk25v3CYn2t7rK7FjVoPjGgsVyHBcQi7Z4Ek
	5bzw/F3888lYbS3m2T0rWyQPBFXN2xnPiEaiBCRDxyhaKw84I9w+lkBPuKYXvRmxeG9
	vBVLtFSRZdhPqPCBRaQdbjNM+gYNNC0+urXYTUNI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018246c158e1-3e9dd495-4a90-4a47-a15a-67369603b600-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e076aede5af0f35c00ae0d2818078c8161da624adb7ab1a24f6eab5552d20d71
Date: Thu, 28 Jul 2022 21:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659044452
