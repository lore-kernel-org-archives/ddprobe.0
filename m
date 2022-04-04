Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230047A
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 23:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649116318;
	h=To:Subject:From:Message-Id:Date;
	bh=Gfnkd3PxWGIIFc1PcUDugObGlOI2mPVhJwRzwdoFedg=;
	b=UeHePuh9PfHZz/Hom15rYYT02h58/VgVz4P+/jnwbFY9MgMwIBi3gUA3fhsPmzKj
	J4aORi4Ad0NiNfz52tlPdCGpoKpwtZwhPuvwfQiBsC+Vg6FPNpU/4+5nFRrgFob6ukI
	KxuNCBER/B7AMWxodx0JPYT68sypC1WPagRG0NDM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649116318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gfnkd3PxWGIIFc1PcUDugObGlOI2mPVhJwRzwdoFedg=;
	b=E29tL6p4226OJ+4LiCha6lanYHzcio15SCZ0KHSQl/IO0xSOQNTB2E0c2Jlyhdll
	tjcHDPPOZeHxavpRp6qfBr5jS38CBA/WXjNDUrkVhTDZtw+eMm9XeocSGQA6SYcSI6X
	N6jyDkdsaaDWXUc52Rc35JDjujzPC1DGU//vDGPE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff6fe0a2e-d1803c3c-9d4d-4db4-8096-fd2a1b57fd7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b83523c5a172379436d57cd4d31b10ff392923fe4cc4661c0a44c9a33a3d766c
Date: Mon, 4 Apr 2022 23:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649116318
