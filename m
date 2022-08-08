Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E2C7A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659951053;
	h=To:Subject:From:Message-Id:Date;
	bh=dtdaFzxOLAtZwPtDdPcHnz6UkJo44NKJWBYeUt/qa7Q=;
	b=UM+o44Qrnj60kvbclgY9CaApnjC6RUqd/N9NZFQc9vD5sUIFAZLwBkNjGrcC9gF/
	DEDEONMRv32g3xSB8x1mNNen9ixUcMr2p46C/bGeW6oU+LnoYCEFttHilgfjhBgA08Y
	dmbCEnYIx+7HgJU1xz9srCalYFaEix7jCpUnt99w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659951053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dtdaFzxOLAtZwPtDdPcHnz6UkJo44NKJWBYeUt/qa7Q=;
	b=NSmU2NXD4jX24bg8uq53svtE1UWI4AGB97lAGDPzjA7Nx02UZI2gTNcQjLrBz4GD
	p+ViMBKV4vnBfJqb2cIRh6yM0qjNPByFxROhnc+LArNq7Aysxg6B9haI6ty9Ujch6q8
	gBeZhyVLcPJLslij7nS50QGRYILNPfwm0DwTZeow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827ccaf702-da7de68a-1ef0-48b0-8b3d-96c59e89f7d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 916badeb0a410d4145590ed0fb300fb0612a557e7bb9105f93790e39d3a94cf7
Date: Mon, 8 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659951052
