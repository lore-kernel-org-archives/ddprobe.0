Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5860115A5
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660098052;
	h=To:Subject:From:Message-Id:Date;
	bh=ns0TGlI9fLuDBbz8mpSvKMZ5TEL6hSrChVqF//3OX10=;
	b=UAHdM2vsr4l4Xsyb0Xo871A0FQ8Wl8+SO57E3VPzCn/mx7FOpJHyrMYXJ6M0Z/wq
	opHNq0QMIkg6NF4A3/3WtxMaXBCO35oPa5OXfqQi1KGP8imMm1L1xhyUFcwPJMftDpf
	FImTSUyIDYxLsROFT7bHSB1f8XFQTsVi8D2nCGBs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660098052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ns0TGlI9fLuDBbz8mpSvKMZ5TEL6hSrChVqF//3OX10=;
	b=WomCvy65BAFf0E2HUT3c+32/ryNBWo6K8dxBzORR4LkF73nR2kuSZWdqOkyWnNw1
	Gr63SjuMl2jW+dsMB7xh56n2LKj3Y1LNLg7BjKX3Tr93NmWWyV2aeajDSxGwe0pjZ6k
	6jL+9udD9aUYgQo4gxW4SjZTW7krOtot96ElM6MY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182858e0219-22f54299-9bd4-4a94-ac1f-99868b05cce6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e6944c796dc6a15e4c886450ef5ebe3b212dc20852cc426ea32b9bf92e2a853
Date: Wed, 10 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660098052
