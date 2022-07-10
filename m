Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E8C1104
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 10:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657448812;
	h=To:Subject:From:Message-Id:Date;
	bh=J/Ct32kqwQu/F2d5/VO1nt3vUwsnoSsmLTHd897FAEg=;
	b=WIIkU6jLOLzIfmz0N+sxq/8RX/ZncqNSVZVieKW1ZJERTowzjm8QP9LxRs3DXbHI
	DQapwFUBSaADxK1/z7DgnaWl7YyVKfHiB8ttDdE6YBZl9DkrS5XO8P7wkBe2I+QQXt0
	CAqb44o3saIsvJ1W4ZJtJvydTkrBku5GeQrsxWDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657448812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J/Ct32kqwQu/F2d5/VO1nt3vUwsnoSsmLTHd897FAEg=;
	b=C4TSsMCwnznzMu0DSN82USUYu3R1Otpcg79MdnbOR2XV7D9O8KFkV2wQsDJRIEDD
	cQpISkEZT1ZaVhgisnIvl21IAbiBBkDwUzAEOR/h1W9g+ZRx8x3EMLQwQVW/xxDPk8F
	9js2iOkZRr+PKuRxj7s140rv5B8G2pb3UwjbwxOc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e7a5cf5e-0fb09290-87e2-411a-af03-926b8fb26103-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 196e7bae0ca26e63a660d3eadead25b1af08dc04735a1421a777fd75e08a3ac4
Date: Sun, 10 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657448812
