Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AAE17A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659052853;
	h=To:Subject:From:Message-Id:Date;
	bh=L/NYkNusokj14tx1KnYCLA08et4lK9ZqZNc1l/ov8Ls=;
	b=ZLiYZNggPCyw99BvBbGeP9dJsc9FeqnYHekuonSjRxTcRZYKZG1Fra46dGi9KoJy
	OTphSG7RD195+y+0CeximxruM94J9+0d4/OAPXzxVrc56Y5Uq3SS9tmlUJErsafxx/J
	Zylyub5hDD59ey3+apFgZchpkJqFRd3oZm5d0nj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659052853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L/NYkNusokj14tx1KnYCLA08et4lK9ZqZNc1l/ov8Ls=;
	b=jlOXRgpBedMmJwwiMigrsVbAtIhBfMsGTIm89FFCraBLX+dQHmLwsnG63l45NTBi
	oavfPuCQz8knBU8z1GlYG2B3IihL08R6JpQaEHJNQlDXSfAg+vegM0xvFXmLx4DsdO9
	WW6WrdU1sehdK+LAQXOQCJD2Br2tT3kvWqGioRKo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018247418559-d606bd3f-cc79-469f-b7b5-82418d8b16cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18d51da66c85beea6183a70186fec8ef2d823a01576dc80c38d2e3c42784cce6
Date: Fri, 29 Jul 2022 00:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659052852
