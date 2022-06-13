Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9CD7C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 02:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655085899;
	h=To:Subject:From:Message-Id:Date;
	bh=lKJ1TwhJ2oFan6V3fPLi47ag/4Maw4PI218XK1RzXOA=;
	b=er/pa09IVQRS7QtsQEg88au8baXdi68WZiZFrkfHZAQlZ1DSywwuRQ0C731QVzgn
	Ojy0QfOrElu/iuHcsR4GXP3ipRiRgY98ChWhjIeaI83CVV6FfeXITP5Symhk+6EH4XF
	pvQLChePJ/3j2dxzLNqgqc4OHw2pJkxHJcPZqtVw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655085899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lKJ1TwhJ2oFan6V3fPLi47ag/4Maw4PI218XK1RzXOA=;
	b=LgUf2aL2BRv/oEXasTAbGewiaEcwiPt8x1CejWxHT3RkNeufwUdrSMEooA4LaSsA
	w8sw2oSlG0cd1QW/ObYiug9bjpV6/zMG7mZTjayFHVM7zVNC2FC6fHxH0+rSAEFaCVw
	Dj/lIvR42qvX6HGhmN6txMJPYBTwt/A5RFjwminA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815ace9e5b-c6490dc7-beb1-4841-936d-7af4452f5569-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5683ec1355bb66ee21a7a05bdc4324474cebc33fbaad8f49473434ca937de33b
Date: Mon, 13 Jun 2022 02:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655085899
