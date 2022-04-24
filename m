Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CFC7A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 01:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650764278;
	h=To:Subject:From:Message-Id:Date;
	bh=5fTBFq8Qs0ZhIZjNYwM0tpRJyHw0cmg6Jj5XHXd/ezc=;
	b=gSB/GCquRegaMknEk6WqqEYyG1Ugo9KdFP2Fccyw29FyEh0LslRSqCtQG6uiNbAy
	nxokKQWi+56nYDUbfNSYLqbY5rbyhn2yzWtJKA/ifArMdub68M4RrUF5Shi/pa4X+Yp
	fYGAxJdQX6s0P5c43ZrEKoToEPyhvHu5B5saEgmE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650764278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5fTBFq8Qs0ZhIZjNYwM0tpRJyHw0cmg6Jj5XHXd/ezc=;
	b=AelDptxN/keuO4OZbnKtGQO1NS7Uhn2J2h65HKJYrLifTfvZkb/lHF37yi0twqZj
	N7DTItb9Takv+n32eO0AdGp12bB+vIrRseYswp2grqe0MAslXGqItXltw7ljNQdC1UA
	O/b63BEpBqQbK5sCJcJgx64V7gyRkxCjKoIWmT0o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805937ea1d-00d822c7-c82b-49a1-a4ef-c78e0367d7b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca26adb601893d0e21c35865a1f18fe0fd4911949d8c20c6195ed4028127bc5d
Date: Sun, 24 Apr 2022 01:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650764278
