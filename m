Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C7E7E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 12:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654171319;
	h=To:Subject:From:Message-Id:Date;
	bh=7Zun1azKlMKrGtxs3UAdn10PVcLxwyJlc7GgKzVafCM=;
	b=SwclFkZ6tV9UUYHBYHmcmYKwbxCnNFhwwSrlsrKM65hoeNMX3EHTEuOxyciBkmjb
	NeR1j+TCcaRjGfo/yzB2f/zw9UKXHDZ4YrOiVwIVaVQDIAuZU+EHg0LS+A7apOxB+et
	36v4ZqeeLp/JspCp3ymz9las8DRgH4DkN7YAWCv0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654171319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Zun1azKlMKrGtxs3UAdn10PVcLxwyJlc7GgKzVafCM=;
	b=H71VWuGZhfYQ5Sl6m8F3tZRgo+K579/yuVFcp5ETncQoX7k0/njibe4H9C3y8rQI
	2vOJg3SO1JEuTxGbvwKHxOY/LUa41zZ+eb0x2qY4ro2s1cRH21ePoDNtWOiOT5yHf0A
	GX1GjAuh45K222PxgP5DVkaugmIKbwHh6W7+hew4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181244b3c47-6899ee59-ae30-4b4a-8433-57c49fc0236e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26dcf98f8df39a26ace86ab2089af66bdc23454fa03e035b415ec5ccecf1a90c
Date: Thu, 2 Jun 2022 12:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654171319
