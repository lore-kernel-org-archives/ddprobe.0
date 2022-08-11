Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ECAA19B
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660186252;
	h=To:Subject:From:Message-Id:Date;
	bh=ALxFu5oPkWanGpFQGfAoiexIvwVF2NfrRmcT/bSeC5s=;
	b=WXr0HcWHZ6+C6qU5EzCph9BLq8QhorqvxJVirLh0wjAOjFYkeAuz6htOr5bQqdX3
	JO0ZwecmMz3aeBGpy7o8A6GF80/zpkBLsBPIGSwqJpGyp5wTTBvOSagGnR2RnY1SFRe
	appSBvHlrBpwolDAE0n3aLTQtFiZHr0NwK5nAZpQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660186252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ALxFu5oPkWanGpFQGfAoiexIvwVF2NfrRmcT/bSeC5s=;
	b=Mtd3vuEqxAVDP68GdoYDGrBscwJSJLx/z7LwA9p9lmVZxMPAmVPsZR9gzHabrffi
	AofqHTdsnFg9HvK+J9JbS5bu3ZsHGVy1U0dATfjzgCNBymO1j32M/kW13vmrNPLFF1+
	e+Q1QhHe0mI2ovaAwamje2iaNynZQERoQW1Z7mGg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828acfd51a-edd602bc-cddc-4ca8-90cb-5746bb62759e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be1c722f925f1eed74f85f6bc15a254f724bb60bc1336e0879bd5336f1c7f611
Date: Thu, 11 Aug 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660186252
