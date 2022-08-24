Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7717B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661345452;
	h=To:Subject:From:Message-Id:Date;
	bh=Bt99+u6pmImkCz1jN30mD2roMP9XSATVB/4Gj0DlEYQ=;
	b=KczaG0SGTLJhv83lwSwmHvxbAL29sf1UdNCxvQWW3nDOM2nKq40OFvM+TwWbhxkg
	/gZxW2RYBf2yZanaG9kRxyASoGgtO2T0Uk945E+lMXM+skdUFHGWmJtbXmkvA33OEyV
	VnINk1iCx5jPDHLqG5qMYvuIrrp5eGQvG0wrCVHk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661345452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bt99+u6pmImkCz1jN30mD2roMP9XSATVB/4Gj0DlEYQ=;
	b=OR+g5ApMjWoI8YL7sFRCaNxQwg0LVtkdwkUUkz8qrnbipbm/c/kqACJmBAjiwVa5
	cSqFyhgMe/xgY3xqsf7tWY8b3ulppefjf8rNmsASoSap1BC7CwkafvdTDwu+l2lffPU
	pe1SLDKVvu5Qru4OPQBKtrHiC+0J0qhicuxFqJ08=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cfe7d1f3-5fa33ae5-a4c1-4ed8-92a5-cfdb6ef8d053-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbd7798cbf26266576e19957096fb42171d2bbed6391d3ba030df008ea1d7808
Date: Wed, 24 Aug 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661345452
