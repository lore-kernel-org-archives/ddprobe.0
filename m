Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB1AA44
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 07:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655797859;
	h=To:Subject:From:Message-Id:Date;
	bh=M+afTchV52bPnUMRaUBJ34JyksRQXlQWWiHksxc8cJk=;
	b=ErhUzl5wi87XkGO4kVD24eteZwwRGOnd6uvAg1RCkzck6YwiJq7dM0/izhWBtadC
	x+s0Yvr+GgnwkjCQJqElwRwqR3f7ioB1fD6Tomyg9C2RAvYWMKzL99zfjME0PesTtIx
	wxUorpdVAQ4R7ZPbgcxLRDcavvMRf84qfX9XOfMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655797859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M+afTchV52bPnUMRaUBJ34JyksRQXlQWWiHksxc8cJk=;
	b=SfidAZIJsdLjd22y0IrH/hKmmTTdqTUe3pPJIa6NfGSPfedvK4jrz7eSBcX5oMNa
	hF2Rtgg6M0Z4r+xEK2cSmboTiLJXmXewX7lbKNgAelGykg/Ql05g6H4rtxw0xwemXO/
	zWge6JRg/XVIcnpUxyXsLRnHJtc0Ce+n4wB+CvCE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181853e43d3-c721b3d8-7571-4ee8-a989-d990d22b1c77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b969bf4a05e7e2b0494bf50cbc32147d76ba8dc7a3d288dbefe3767e5c7c74a7
Date: Tue, 21 Jun 2022 07:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655797858
