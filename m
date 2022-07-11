Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1881D3C1D
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 10:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657536412;
	h=To:Subject:From:Message-Id:Date;
	bh=GuIYMEah2VdWmMjbE6X1Jg3/EB+bS5XpH7y899zOnB0=;
	b=WIA2KtmEhlKQh7JmRlR8Ew89xLUaV4GAqbwz1nDWczuvksjM/2lKNW1i9H5n4vbz
	KCfiDR27/YudosEDwCf8omK2JzAdUU6l2mOQDEp68f5W4OgpxKJC1A1rGmMlK4KnidR
	JWOiNtRZq/sr5ceF3KKH4zeMjrQXMw9t9M1a/dzs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657536412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GuIYMEah2VdWmMjbE6X1Jg3/EB+bS5XpH7y899zOnB0=;
	b=hDc3mFsSB8TwZ+zIRI1ghxAxjR1ipVuC5mOrjuGyxC4iRGWxmoXkUwjMbuvNHfnl
	6hkrf7dkYKegBWQJpsYobvQE45hgaWFndUyshZmJdfBKiO9YOHrvgAjkb5wGMt990du
	4ORnQBFnvYJak/98aBBOtKvyEEL87GDr5dF4Y3vc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ecde7a7c-fc76f5d8-8c5b-4e32-9ead-de0912851213-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd5f9abc10fd558354b5d1263089ff2d2626a22cfedc2e45641ae47cee22df36
Date: Mon, 11 Jul 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657536412
