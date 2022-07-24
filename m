Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207447E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 02:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658628412;
	h=To:Subject:From:Message-Id:Date;
	bh=9wkQphR9sRq5sPJxCwuzNFepyPVFddEuu99ibb+8hHY=;
	b=WXQquC1g9rqHOyvSGs4C/Cn//XG1lR+g9oMWui1O9g4yuz5tM2l6Fm3RYTs6Uf/T
	Gl7VAAu5pYmGAhjBGI5RP4OmePNGK/hX28x9GOX9hfEVpwmOIKI5/P6HvqVRVzvN/iZ
	ZU1Di+7Mt7W86LUXLMpC1M/8EmgaQPrM99LNJsvc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658628412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9wkQphR9sRq5sPJxCwuzNFepyPVFddEuu99ibb+8hHY=;
	b=TGvrDSX3lZQnMpxfD7d/6ya0KW/hpzVwj2xEBv2iUoT37DDLnYhffhyllzQS+VXB
	ZE8QSXHMai9efJCqOnuv9k9inHbGE2QHDrFL2jozJGwuwmJun1Z2HzF/4HkxdfECjaI
	lPLbdU+8KBizIlpv/7sn8/H9pmRmtiB1fW7CdQfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822df513a4-adfe217a-dfea-4dde-a328-2f64ea80be14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c89a6492354362b108ff639bb295b0a0dc146dc53663522155ca1d98505cef85
Date: Sun, 24 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658628412
