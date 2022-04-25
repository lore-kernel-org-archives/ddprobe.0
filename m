Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613B333DE
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 22:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650926938;
	h=To:Subject:From:Message-Id:Date;
	bh=3qGPQyniHktngr/Dwn4LHAyq42R4/0kIgEkUmegObvw=;
	b=HEfwkIhElwfqdTG0882MfjLX9g9l9uv+TEkj1G4RUKMbawNbWOs/ij6RMNX35tSv
	AamkEHHsv1o7ZRY5MYlxAId3brxe4+QqaLpTg3BxelVQFcziBOa54vy416Tf8VpoMyp
	kTHitYIamPjGzd4BMVlWcpWJJd84OI6eprJXEiC4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650926938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3qGPQyniHktngr/Dwn4LHAyq42R4/0kIgEkUmegObvw=;
	b=I7n4w5yY6xE4/1lx5fNWac1Z5it4Dv8ktS3REn7Gijg5NzLpJBjC1K5eIpPhiZ2b
	xxSg+s5hHf0epch+vLo5+PlYZDJZSyfufABu1ssZIWawA8J1TTXyf1Dx/HDbOUfkrAF
	5kXJcnbqGP1D4ORTd3IbTK67fqnWHVcnJRI2hnWw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018062e9e8a2-822fc3e2-6be2-40c2-8e1c-50ffc3e89475-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61ef52d3dfad0d6f643a4b049be52ad91ee737d45a04371e4622a1e0c5650729
Date: Mon, 25 Apr 2022 22:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650926938
