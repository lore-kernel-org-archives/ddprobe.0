Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD41433DA
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658965853;
	h=To:Subject:From:Message-Id:Date;
	bh=gwaZ+5Q0Nk2dO5XbogoMMLROMBQaApf2TFg6/2RHoZ0=;
	b=ApS0rDxf1kwlGugkpU4mM0KQ5OtTbMqpRbwmEvMS9A5AZ/LdbwG/CZLUSpprn4Sz
	LowfRpVj+eBiD4h6l9PzsKU69y6W+3WHk5rmA4Wm17LOBv3alSCzfYCknbCYEKJ5/4d
	Y24DhTF5B3hgTgzxWHK5Yg12rXyAAttguGpQfv1I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658965853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gwaZ+5Q0Nk2dO5XbogoMMLROMBQaApf2TFg6/2RHoZ0=;
	b=ki2RdyUni0gK1RdwVEwEPVl2AlBw5sCtJiJYaLRnprOrlXha+rzdsAZtJ8x74xtc
	VMgnvk54aShIQA/Aiia10+slY+gjb7qodXGTpHQud0LhcItZl+YcQu7RzHeJAX8A7Vp
	gwlBZb+1vQPSjn1Fzcf+p9UmdF3TbTmZUGRaEaPM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182421201b3-d844a88b-a7a0-4890-997d-2f6457fc1694-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d149d0ec769a1585c7c504ed6597927063740d4dc72a90e947c9625c9b57cb1
Date: Wed, 27 Jul 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658965852
