Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6687A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659073253;
	h=To:Subject:From:Message-Id:Date;
	bh=GKVZCYQYsdN8rZ+Ev8CftkB1WzpwxSB4AyA8ihpMaX8=;
	b=cuPmDWSFaKACxsUhZXXzyIdut+t7VL9Es6Yffmbpf4NoeclJMyaagllC+s9ExR/E
	pCkAEeqYS5HzHA/zv9WTmcII5j3d/Q/WOGjkkIr/cS8LYaL1EDTlfv97/KvlJFZ8YYw
	SWxbdGlviFF3U5p9AsizZiQJUQS7GREV7kq2JNAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659073253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GKVZCYQYsdN8rZ+Ev8CftkB1WzpwxSB4AyA8ihpMaX8=;
	b=KCsOebxG3Is+UPiOUAcOPAZu8S/Ap4ZV94VCDXrQRkmUM9W5fnzLijceGbC+HtxV
	IoNSsdlSKiH+iCKSnZ8+BD3D4SG7rFWAUHr+x7s/RH2Z6ldYkyNtOdzXJ2wHIX89Bvg
	yafCIbLzdqa7qSl5+v1Ov+VV3BWeidfKt4vfWwus=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824878ccc1-58ec375b-752e-44bc-8879-3d1d36b4d6e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8166ab13a390348a9439fa96891ef87175b5d664d7b0dc4a0129960ce142cfa
Date: Fri, 29 Jul 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659073252
