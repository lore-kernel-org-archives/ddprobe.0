Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268287B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 08:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658306812;
	h=To:Subject:From:Message-Id:Date;
	bh=R7f69a6FK/xFRQwqpDLlSdlmDHN3aHb5IP0rj1MkuNY=;
	b=XVshr8mF2RRyKdxLG7R7xoBC62NVBh7ajOioI45rJDHrnuDm5VKMVD9TFDZgv37K
	hRUUZ11MKB+geM2hcZ1jG9eFAjEMpBxieCCcGf3LmHa6gnGaXlNS19v5TBJWXOPUC2b
	Yy218kW8FHWfCif+tl295cA2YL3UF9zN7MbRz96w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658306812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R7f69a6FK/xFRQwqpDLlSdlmDHN3aHb5IP0rj1MkuNY=;
	b=PzOU4Iaz12hoQRuDWDYyJJ9QduC0aNDUj3pUpiZUlht2A4L6jzV3bKZmwW2y2yd5
	B1mC90kWNW3iiawwksdW7LLRKBufaPSGnBFxxntXR2nTAXQN911IkCcca7qkTSMVX8+
	Wkwul/T+uE61vQnMdTICtPUnhdAeNoMXhyGllMU0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821ac9d982-626c30df-7fdd-419b-86d6-29a0ddfa0084-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8404c3034c6233ab495d9b7e2730c51c22696188812f85f5d49321081dab2f6d
Date: Wed, 20 Jul 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658306812
