Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4F87F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659415252;
	h=To:Subject:From:Message-Id:Date;
	bh=KhfdX6FTZNUAg9Pz253dxO7Ak4ZuoU8+uxABaI8DN98=;
	b=f17oRJASa4LR8CznV4rlgosdQlITjgoLd5dIYFn2KK/DlnC69hBLeqtsUnrpVmpq
	yQ8YPiWE5oJMHGrqD3B2j/iAelyTsC/3uQ9x2PumlDT7vK6IiNakrD2yHeYCf+0KnpF
	WgvpeG8O/ODQBBpAhr7yMqVOdaDImAqog9HY+QrQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659415252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KhfdX6FTZNUAg9Pz253dxO7Ak4ZuoU8+uxABaI8DN98=;
	b=X29ZMOvmUoF/DDp5QjBb8hnDeZNQF4b8R0ARWDAJhvmRh+AN1lTrTBqa9/Z4X+i2
	94HTaEZog3d4eUrrB8qS58Pu/ERgwfDir3CU0Q+qTecS5pk7G7KUd+S9M1KM0EwHVmo
	x+n47Lui0dQYyvEZW5a/BtX7YYHEnDyfpJFYjYu4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825cdb4ea3-6f12bda5-50fa-4c8b-ba54-a03231ff8dbd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab21adcba746a1307bcd8ee245df8f01c1b0fd575c911205d46bf72f8dd336dd
Date: Tue, 2 Aug 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659415252
