Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41D766C5
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648062085;
	h=To:Subject:From:Message-Id:Date;
	bh=bfmLkIjczgXf8sDRyENY8b6LeT+AIxf1qNeXPiCbiyU=;
	b=IUWy9gdWwFYvbyClJ9ZO8q+6t+LpHaXhd8tn8PA1yplxGkEIbKMa+vZ9uccUFIg/
	2Ffxr5CXhy1FsOI4Kr3CA7etI3x1zJ5BOmvy9x0u/7ClFnAwyAZMExiVNptNg3x4wkW
	QSfu1+t9o2sdJ3ubeylfWmVLZD8W4RRAUI23KTQY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648062085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bfmLkIjczgXf8sDRyENY8b6LeT+AIxf1qNeXPiCbiyU=;
	b=iwu891FxpqntcCh0i972eF+X97rcy6lmc9aWS8RS04FqnyiuMT4EbRTFUZE4UA1b
	6sCSQbimoWLcriJSBE8UxwBOLgLAGZ/12QAD54H1LJcsxVaGpZ1heGStoQBoR7hsemU
	WJR18IChvnzxlDH2cF2IA0tHC5E/z2eJvHGCvJ0E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb827b701-315d4f4f-4702-4399-8fbf-db1cd073717b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 102b9df371fe2549f89723c4f48cdc2b7ab4227d33bcfcca4be0ed63c0436998
Date: Wed, 23 Mar 2022 19:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648062084
