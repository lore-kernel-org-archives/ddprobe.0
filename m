Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692CB4A26
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659563452;
	h=To:Subject:From:Message-Id:Date;
	bh=3XqOLzxywRIl4FgBXSvkjzC7cFOO4cSiwckqd1G8YrU=;
	b=jdS/CZX9pfHjOdyjuN0Kn1A86xSLRzqzlN5Xdevt2slPuveHxgTcv+evhF4e8Jl3
	sOEzkMGa8rA2vc7xSltmNc8KGBfk4OennaQlX0IL30mNe1GQnDfzO2ki5fhabKnP0Do
	9ZPtqUK7mDITPyHXKI4JjtEpW+vAKU5v+c7XCkwI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659563452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3XqOLzxywRIl4FgBXSvkjzC7cFOO4cSiwckqd1G8YrU=;
	b=IRZaRnYFR9qEGYg3bAVyMgDQBfw+ugQEO8IxTzh0DSHY/p3R4grhfr8WbMp9tlHF
	dn3kVYRMloQrRr2qTw05aJLzco/ZSK8JlnIVzpoNC9Pa/TUlibgbM/R1Mh5tSAzihfq
	WCbbkXynAP6X08lwF1XNW4KyX82TGBYM9Nuyd/e4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018265b0a893-e1eba203-46c3-4e33-ace4-1589c6deb612-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d16b1b90fae8c737cd62b6d1d0b24c83c67b631d8cf0d0977cd67951ce4f06e5
Date: Wed, 3 Aug 2022 21:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659563452
