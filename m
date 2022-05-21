Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D3F7E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 00:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653091439;
	h=To:Subject:From:Message-Id:Date;
	bh=Bth/vk4OqJQ9cjMqzv/GlIGpaM9BvAiSHPeZ6nwMHqc=;
	b=PdpPINUwKe6fbs6IrxHWXcbtkjPGRkeMtnQ/tIu2+scK0Id9ygeRaoAo77VSzua2
	p5xF7Fob/aHqwoIbRjIQLwxnGKJW9tpzQ2MqzGUHeLZmVl2RbwlCMyZsUxmKdRZgd3L
	DnSkhL8BuQuA6GZp96NN0z+OaBWqca6XoIEu0+Xo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653091439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bth/vk4OqJQ9cjMqzv/GlIGpaM9BvAiSHPeZ6nwMHqc=;
	b=Ns7/lrHj+TGiZMQ/N33wxAjdkZqp1wzkYxLkFAASSbVelLuXNT78C/3b5lwJFAu/
	LwmzagabR6R0paY2tpAB+9IEj42D91zrD6gNAQdkl0zVFsfZ/sa3Acomzg1zhOFASZp
	ADmn81uKlYPmb6PilE+XhHYiDfeWkAy3tsyREh14=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e3ed929c-d401a6ea-9649-46f4-a3ef-cae4ff7a91c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de6217d7fdc5a5c4329292eb443ec8c2951c8d17279bc4de9947d701c37ddba4
Date: Sat, 21 May 2022 00:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653091439
