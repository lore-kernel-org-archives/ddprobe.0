Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038817F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 10:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655722199;
	h=To:Subject:From:Message-Id:Date;
	bh=F2dFfarxa4H33vmfOYAIVFharBU/TnohSIBP1D596cw=;
	b=YmnALZUQJUzvJ6dEQHPefMok6YqDvVmAV4c/LMu9ueOUmw6edVNdKxX7e7mzzQ6x
	YXXQtPjorlIMFN97Dv+YMJQqQVtwl1uTLttBcBn/D6U3Q10P5+P7HNPle3RhgZ5h1hl
	mXzw/rd5sgI7YDVPUcd0ScMFZ/SfqrHBbmjL9GMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655722199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F2dFfarxa4H33vmfOYAIVFharBU/TnohSIBP1D596cw=;
	b=B0u/vPek7pXGqRuBjnG8k5VKSWR22kkY4jkslGNUHKhsbIlFyyIJ/UEnHcxrH+0m
	QzXARN59/Y/P1E1t7iYUz3CzZqkDZPJgkLwIv9le8Zg5ikpdljS3AD1bZn8zpqvd6Ha
	vtYIfSRCTjJhOdAYO/T8+dczTst3IVnxiBVPDe40=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018180bbc8c3-66eff0c9-6415-41ef-891a-2c1c226cf468-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 579361664c955956e22e41d9da2be89505a6359186ebe3372654601a19f27de9
Date: Mon, 20 Jun 2022 10:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655722199
