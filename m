Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933D233C3
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 16:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658678812;
	h=To:Subject:From:Message-Id:Date;
	bh=3lzvmA5slSogVrrXhf3gOCOhJ/8FMgWTuQovc3pPa9o=;
	b=FD2QMZdmO41b4TS/AShXr6yf5FJ6SLIgE3kg4EmX3OWsv5dJb4980rFV3DyYK5o1
	tFD9NiA+TTw2jRBSeZnNFKiFsPNO+eUx92HtEvkQgoMHjipFwbaAlDr2DCeX4TXCwO6
	aGZOeRQK6SWnGGBBayA3/vPPu1gYbW6ZRwkXqHIA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658678812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3lzvmA5slSogVrrXhf3gOCOhJ/8FMgWTuQovc3pPa9o=;
	b=cQT1H9EUtRGQQ8f13+DZD54gOBJu4NhUNTZc4N6V4grYSVcZdnhYqU6YRRBIqiLs
	fxUP3SVkbt5wWX8VGhZiuRt6Z2OyQ3tPvuebzm6FlWEn+6eR8jQ9iSC9TSNDOD7rYTw
	XradB2ZWI09IIQI3LlSF24C0M02BLFzduaa67sNg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018230f61e70-3496f8d8-c205-4aab-adec-402c7adee674-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ad41382351e21528e6e6a9786bc248b6333c2969b59de8696e336e287b8e869
Date: Sun, 24 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658678812
