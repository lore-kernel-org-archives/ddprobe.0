Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4B67F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659330652;
	h=To:Subject:From:Message-Id:Date;
	bh=XwgwUvTgW1r0Zy/+IVrXB/5TCWtK84yKK8SJu52tOJE=;
	b=JDT4jk+w/ySAmmYrnAVUCR1MpHMnbTaAZrfx+/MR9TgKMZlPTfqmVNaeY5DvWh+Y
	jwaV+b0MV5dmW/CO6pIAOyxGYd1IUkYI6Mj6A8ad9LD1GbOUZQKsezy4xX40/w0stkd
	dNK8101o819yz16WTVlyMngczdajOwzHs7uNUmQo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659330652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XwgwUvTgW1r0Zy/+IVrXB/5TCWtK84yKK8SJu52tOJE=;
	b=BfOWEpI9l5dnsEF9FN2Uze5KB0jp2qBN5oyStNw+y0znShHtdeqOYEaR2QmKSuEX
	cHrrZxfGgTAs4I3NBEIFwceXu2e5FGUYyd3XAhRv3/+e11bzuPL7uwV6HxY82SLIZfD
	dYiOw+92qGrnh4BZWPV5EGbNQzlLOR85f9LoksJo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018257d06979-e727a8c3-8a47-4e49-9785-a5f857b0a042-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23c934a4397c0ef84fb42f6224280073a9264366418a9ca54a0ebeaba6521893
Date: Mon, 1 Aug 2022 05:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659330652
