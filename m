Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07E4257A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 12:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656418013;
	h=To:Subject:From:Message-Id:Date;
	bh=algzCDpg9qnfJILQdlOzX1NfW7gapSdp2MyAxM4lXIg=;
	b=B2O8xhVkD0s32QN5keJ9OAS4HIOv8XsE+2eDdj+3M3Q6voJL7MZndAg4fdWiVnq8
	HYz9nCz2cIsx33WBut68vbZY42FX1TgyrGfo5x22WxYlN9mabS9ldFu0S7331Ez8f/n
	z7fz7uif4d8Hti32kusqyuWDbcvh/mxBiTdF8g4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656418013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=algzCDpg9qnfJILQdlOzX1NfW7gapSdp2MyAxM4lXIg=;
	b=e5p0mXUxOjPUjekLo2L7+dhF2NGJwkd6yLk/NnCwgd1t9APIZcAh9T9dzWyprgk5
	YoyFTse0n8jDhfQq6xq3NopCgoMMct9QNl5vPo4URHfNGoXR2iC/o8RDDJQ47BwhcKr
	YdflrfB5zZwXsGTXXn/1CU0OP2JoCHnxs25XE/7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aa350cac-7dc6944a-3d23-4ff9-8f30-67731e5b8258-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ce892fca0699b3f914cc0ef0fb7f37f0197d37a47f064f2bc1842f0f3c3c04e
Date: Tue, 28 Jun 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656418012
