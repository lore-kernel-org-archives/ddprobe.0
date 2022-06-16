Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE21E7A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 08:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655369519;
	h=To:Subject:From:Message-Id:Date;
	bh=/y0vTso1tzYALRz+fkLtVjiJjBOgWppIMTWcoj1CWJM=;
	b=VKs03Y1Q6sdo6LK1QKhjracAI/vDMcz9L2T5Z8xusGf+SzIh9eaI0g5CI1J+Iwrn
	e3GxzElIIMA5VkLUPJSLHo4OuZtiwCNx98sIRiruFnIO1536eaWEQLBH6h7S9uEYEPT
	uhUDm3vEbXgI2+BMP0hCdUgnZ1csKBP4YimWd0vw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655369519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/y0vTso1tzYALRz+fkLtVjiJjBOgWppIMTWcoj1CWJM=;
	b=KJyCtLSqy4cusEqF5iAT12TEvGV6ay+OMhxttdivGSDdoYNMTmue9xryDffnbTmJ
	jm5RVQvAtrgTD0OeHvbrRW4EJX/rSvZanS6tSa3fz4p+/bQl4fjvBwd85zM1gyXYBA6
	5aR+M61pRCdfOGAUvDTJES1GsS+5mIFz6qFH4TBw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816bb65084-297df551-45b2-49c2-9791-c9f273626d69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10d6e3a03179bc46f2449af1177763955fe3d2c70154e43897da6d5d42e1fbe7
Date: Thu, 16 Jun 2022 08:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655369519
