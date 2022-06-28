Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E665367
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 04:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656391612;
	h=To:Subject:From:Message-Id:Date;
	bh=aKf4F6VTasGKriDX9rMg1rgypeuUL4BsjXGMkxaANVM=;
	b=PPSGf/zzSToKgaNWHft6Cl7MqcCFycIY0OM8ZCIN50OqfTSe4BoRgMqbBiuKDLc0
	bKF77lQymVBKOp33BY/0I/1DBWV+xSvRzf+YMPz2VwsOnU3Sqe5HxmUCSBWGSXDiEc/
	4qkSZ+qyaR+bQERtv5iIeIN+/pWrO2q6/Emb889M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656391612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aKf4F6VTasGKriDX9rMg1rgypeuUL4BsjXGMkxaANVM=;
	b=kXT6oNdMUHG8Lv0AtX0FgP7IEKNbXqB4MEAG6PtL+0S6m/YfoxcV3avL1vl0dhki
	ICkIX0jlZRqctb54rIXPB/6RoW7ym8iOjwDzAxIsyYjC2Jc2uTcQXBYU/WXt7kmddmS
	iXMfODEUZ42yNyIs/GW77g/htzpoC7j985PMGrPk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a8a2378a-ae9df682-bf7d-41c0-b930-804add7dc39e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e5d15e192db13f20d89e246b6705bb37fe27eac582198156c206e7560e7bcb8
Date: Tue, 28 Jun 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656391612
