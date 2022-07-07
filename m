Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1E52596
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 19:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657221412;
	h=To:Subject:From:Message-Id:Date;
	bh=8o2n+1YD2hVEZDKf/OBSKPpvxBNJhW0AyHT1C+hBEY0=;
	b=PM829z8Skwlm9dpYqYN5rd8Elr8/JI4i8VU+rcR/Sv6q6P+XBvdY3SVUji8GHFCy
	vD5uW02Fc6i8cfRg/0/QjhS6B/OdA3SNBdDVhxeIW0whVNUdkgSroENGnkpp29E/04m
	dFeeFzPGeeexMaHqbMuAFW21aFrI9RkGLxcZw8VA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657221412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8o2n+1YD2hVEZDKf/OBSKPpvxBNJhW0AyHT1C+hBEY0=;
	b=gOYinQTYZCG74wpQHWHukNGXcDSVSMdGgCHBjVe/O3nvs8rH7spUgT+s8YzvcjcT
	zM8KJ0nkdD0TwBuYdwJLYoi3BEbFleS6r1juZuTpidoOiGyZlwBf+1WKUnju61fQoPf
	UeAdcV8P0aXNxFRG0KcA2DwF0rdNvs971CzYFedE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181da17f5e3-be1cb99a-42fc-48d8-b1a3-6eb0ab647fc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b74eb6dbdc991367014ab6c15d82b0039cb72bf5e98d39f66ba45ce46cf694a
Date: Thu, 7 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657221412
