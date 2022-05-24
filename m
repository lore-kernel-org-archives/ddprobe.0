Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D9F7C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 12:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653394139;
	h=To:Subject:From:Message-Id:Date;
	bh=cKxnURgSJ21aENasIz9A8gEQRw6NryOfQQEcLHHXn18=;
	b=Xehp02GoVRGErWGdW6dkERbp0EQzgmTTBGlVIc2aD5bNeKe8huZFh06pWuSQSVa/
	Y3DLcN9EsOtrvBgrU3+kyx/V+nHGwcekX+6UKkaxjNfqobaXBoX5Y2IKQnpd+/etFV7
	x3F14CGm+mn6XWyRMyxBYJnvcJOkMZyFOONC2S04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653394139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cKxnURgSJ21aENasIz9A8gEQRw6NryOfQQEcLHHXn18=;
	b=e6yno0oO8FxXUL2ujwop9ywYyqaVVbuALPmD74FnRV3O7QZzYhAJqFyjRw/GwuHS
	X83f52jkGQcSJc2BWKmjWDMixmWkmrdIFUKZy1jdU6bOaV6jsGvqlayyqkdXb1pfQvS
	lIbjMeoXN1c94EA1fgyN105kbsP5Vro4B5VE052s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f5f8689d-833a65d0-f75a-4688-9685-1a91e7e866b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 794b560b7f276bc9eddfb1aacfe84094361ab24fdaedb531712f22dc465ae9e3
Date: Tue, 24 May 2022 12:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653394139
