Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5910D7A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659985852;
	h=To:Subject:From:Message-Id:Date;
	bh=IVqtImGHQUGX3cEH1fjq+RrghIqGJheAtOrrHioH9qw=;
	b=IhkqZATme6WFUJZRdQVYdCf1+pdCCHBAqa9vBHhaMlqWZqPa2hKbiFoPpAmuyeX0
	LIFYBVspzRrYe+lo0YRNM4a60W7+/9wrmzt+RSg5SgNR/O3WCaNuNYiRW5XgZ388MD0
	vpC+yZs4vO3Nj1mxo51mVc+wfMVLaFBQWAR3Not0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659985852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IVqtImGHQUGX3cEH1fjq+RrghIqGJheAtOrrHioH9qw=;
	b=PbQJy6tDSgSs7ZLpNJBXm9r0W6CbuxYCl/NL6KGsei7oCHg2fir9stlBbV2QFGRY
	bJ08mMOe9tiBt5D3ssHUcMckQbBWBc4Hkche7Lvmo3tj/DHzLtvxhFH9KT47JSLA/QZ
	/mmDBJObrJp0GdCji9kb+tyRuQfFKbTGWdQtyTxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827eddf8bd-93b78f25-5bdf-4653-8df6-86504a88f989-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d1eefde08e02ce80a01753a12841b6e4deb3f59bfbedbb8b44377f46a766cd8
Date: Mon, 8 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659985852
