Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5562B373
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 01:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648689478;
	h=To:Subject:From:Message-Id:Date;
	bh=GFiz2pThm4fCTe8Z1j3k371Ste2/E7V7DJyp4OMn2LA=;
	b=hbsH0646oWrsEVQccEjs7pHgtoX8kkVYUH0EIoEIK5j2nILfEui0x+RYHfpxqcI9
	NbjdtWMthClwcssKN7XDnsXxRzrQHp1smJszYfsRoSo06u9L9jhAi/yVTdv0QOTT9sQ
	U8xfZYQCv5s/4LZ9YnAgOQgrgYMYXsogX027QAsk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648689478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GFiz2pThm4fCTe8Z1j3k371Ste2/E7V7DJyp4OMn2LA=;
	b=jKM2Y+DAjZhRwunSz8cW6OFTAKaPRM7gt/Og7ABKekOlfmVDAqwAPOTcj8U4uX4T
	Er+rc0y7I+ygt8nJKWlXag5EAE3vyP995U+RnIl14zdAc5pUKEft8jOxdZxTlXyReFF
	GqXbUf0kGlXVpDr5JYwO3rPnMlFFSmM8xhDR/Lb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdd8cfa62-c5a607d0-ffb7-4401-bebd-de0d07f9399c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 205097d8104ae69a3bbb9ab92d298865c987cb0f7bdda76b5921c4ba76075d43
Date: Thu, 31 Mar 2022 01:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648689478
