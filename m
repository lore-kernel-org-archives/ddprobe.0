Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F461FBC
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658296612;
	h=To:Subject:From:Message-Id:Date;
	bh=n6/kEb539055ilYcfU7No5zlxsTqvfv9KMbNGOZv/EU=;
	b=adQ8KsO8BhBo8auf3f5eZTmOJ2Jwe+qa2v+4bArqjyjmicWC47NEfECjJHdmzjno
	zXTG8AKs0ORrfgjic7H4A6aJhjNosSNaNdF/IuzDTVrksXnPOIvyzO/7NR36dtgVdSr
	G7Ak4dssvBnuo3pIUWhuzLDvfQ+YTiwYUf0+drqU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658296612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n6/kEb539055ilYcfU7No5zlxsTqvfv9KMbNGOZv/EU=;
	b=fZc29gjON2Dzypv6suED+EbxN/+jYW/iC+sYoCiZPyiAPLexYbZTLoDY6zgJkvBL
	jq2WjngnZaUq7yzY4JoCOz4Vr4ACwxHnY7O1vHxZIFF+/u7gU7F50gIibQBklqnBxRo
	BaUoPyxwvC9jONu7pTW8zyDHbB32AtOT/qbseLxI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821a2e35eb-689ebbe0-1f2a-4ab0-98fc-dd1b8268d9f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6aafd29cbd1a46c0d22b25265f21dfe4a463a06f236be2f98dbed9b39b30d1d9
Date: Wed, 20 Jul 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658296612
