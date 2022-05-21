Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0330117EA
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 07:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653119279;
	h=To:Subject:From:Message-Id:Date;
	bh=Z+l4TTrjSwjnSaCWS0YtXDub/Bg+ifyryP6mSoqri9I=;
	b=S2DdI5j838SVcNiSm6X3CmEE1di1MEd3lYqcHByKvVjnUQB0JhdRBCTirNQfBbNs
	Mk1Cf0PzQ+Bk5Pt6KDwxY1+ds36e6p9tEwg7BnEebhELS/rBV3r7ZcIZg7BJMxgiXNS
	ASLvca59ot3SpkTfMMuCc7Ru9LxSGrCeROanvpGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653119279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z+l4TTrjSwjnSaCWS0YtXDub/Bg+ifyryP6mSoqri9I=;
	b=dxSLD5MBhdGUZ6R59noB2ogNyX01JUjCFQkPJhkNfcYG//7Ckgk0FeqTzyhTaKAc
	WXQjJ5b+FeQzTSnWO30jCZk08V6qh/mMhtNctis21Z4BpYBnIe4Q5dvmXRJ00ju9Sdr
	ST8WVQg3znbLQpncedI3BJFTK7APD16IPAvybrYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e596609c-3d3f28f2-4ad1-42f2-9e16-e601d5d53e8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74ab77ce9f6b081bac085f496943c14f179822a6d08c1c271dcaf6d88f4b1605
Date: Sat, 21 May 2022 07:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653119279
