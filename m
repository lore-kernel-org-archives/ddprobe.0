Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004B23205
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 12:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654001219;
	h=To:Subject:From:Message-Id:Date;
	bh=Pxp1e6IxXZ6I7H1P/UTQoR8zmWvHNxx0TlYpj51omMU=;
	b=RDydicec+efmA4lttp5CsChPSHts+0CF5wcMqjj/J50ooiuv4b1Xg0aCQkxEHEM6
	W1u0AkuT95OMALOu1ewTeRtwqRV1OHLJKjRSfqb5th5gEMoRFPUZkkAvjkm5vuAyRgn
	81FKfbvHAFF9Tukj75CB/mfNaWBtzMGlqKzpaCW4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654001219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pxp1e6IxXZ6I7H1P/UTQoR8zmWvHNxx0TlYpj51omMU=;
	b=VqAXzQN9Lyjhac3LRlUq1pl/x5ahKjGdrRELHcOqRhnzriSoCBf5aHwc9aaF/zfZ
	konRm3PIwj8+vc33o5aaMlA2xP/WpAtkXefO1TM6VXzpU38g0IBlL1Q0rjyUOCQOJET
	MryH41mc69K5H6NC1yRYYprxdKrvXAvcpNKQRcYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811a27b6c9-2b56d553-fe3d-4292-b704-f4f4f691cd8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d45e87e2fd6e22a233c315f932f53b01c36e17a97a4c866f7d55e5b348572de6
Date: Tue, 31 May 2022 12:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654001219
