Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5EE10E6
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 03:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651980118;
	h=To:Subject:From:Message-Id:Date;
	bh=1TdjmLhlEeA9s67mJddCSIx679wsWh8X96ONuHmtIV8=;
	b=CIFg7mN0U51TScHrElZ3lEC3cByUyBl09H5jK54zwM4iJmjt+AUhyciXmZ5uHf4p
	MqcECetbKXNvJf8aGC+KSVXBtJtGs9dU2iHnozD6+wHgxLLaUizd5oOMadFqsb73wBr
	SwFdkTFkvDVUY6sfOBWTNfj1Nny8fDz7RBe1zSvE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651980118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1TdjmLhlEeA9s67mJddCSIx679wsWh8X96ONuHmtIV8=;
	b=R2KKZSMvwR0cyRDzgaQK/hgIPcS8dqvM6xCqhNn3RUc4sIrL+ndc6Tn9zItM9x/7
	BvmbKiRAe8/O8pxYmMPFocxdy4Kd11IiV/dIgmBXtIeemDlIay6jgm3VS1EFIxbdOXi
	hV82nrrxhH0xpFksLhsFKj86XdIg4VsdvI+jgLqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a1b0293b-a244231f-94b7-4332-8817-a75450c6258d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3270e0c7df04c9b4774677c14b6534b45576c7a89e3d864614c1721e398adca3
Date: Sun, 8 May 2022 03:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651980118
