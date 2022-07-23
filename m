Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B91D7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 09:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658569012;
	h=To:Subject:From:Message-Id:Date;
	bh=LAa/q+msdGYdkTYIeVp1kUM5tEZmCpOLBi7qfq7GDko=;
	b=GsqiOdW1V7BjPhJK1tCIyM8akxWVV8nvqwdhcL6AZsPclZnisSNTLXlHD6zCoKc/
	UfwetuLpHUUcwRhglD3oJ8ZkthyTIg1xei5TQ60HEr2EFzQi017SAI4GlmMCYWcEn1Q
	zqkAd6mIoIPv2ohGqmhgOZ1xPQ93cUEeLw0Ff/YU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658569012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LAa/q+msdGYdkTYIeVp1kUM5tEZmCpOLBi7qfq7GDko=;
	b=hO1IcVHvekDxMdpfFO2pzEUUrzlI1RK9A+z6yAWKWLuAWw8dUFy/nNj6WY3GrVHh
	xtcW8Oh1v5bEQMkrL/aUotKtBjD2jREARbv2Kp478Npolna+lHRnsH4gmIeiP4SYEwE
	0O6ScZLdJSxuBf+Hr8U6xtYY5EXwW00r+rlgT5X8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822a6ab4a1-9e798948-2e0e-4d89-9b7d-b61a56669929-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48b9b3bc4bcb97884bc80c800f75999f6c74d5240c19df4b6098f6397ad9e1ab
Date: Sat, 23 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658569012
