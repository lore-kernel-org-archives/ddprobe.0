Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F847367
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 04:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656391012;
	h=To:Subject:From:Message-Id:Date;
	bh=xSo3hWytyKi1vH2x5WkF4VAWnu2XxhIgmWSHWNbAz4g=;
	b=TCUZl+QR6W8MaHWeuOxHAwOoR6UIJFiM2ElSvW8tM2h81niYI11EbmD+8JLFf2tA
	/GCMB6XBzCjDYyPIS3WV1AjEiZ54mT1yeQ328RnMdHK9m5H1aFcfZBPICuXyo9QbQCx
	tMJQ4z230IINv1ag4/xtU1JpT02feQ0ZFIe1m6gw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656391012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xSo3hWytyKi1vH2x5WkF4VAWnu2XxhIgmWSHWNbAz4g=;
	b=dTE1tY/uGdE8vw0HP+DktweG4NECBUX/CvOSwxuTjtKGh98jqQ7jD5zbEhjWPE/T
	ARS/FS9vWs8Lgxm+kBp0TqY6xFMbcC4R4BSN1TXpUxtR+zg6rbk+yWG+/fvRRzlwbtc
	AgA2evI+zx8mBp8b0BxU49tOcF8NMHYBpDClFrvE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a8990fd7-7ee4e0f5-f8a8-46f0-b283-e0b3f8d1944b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 702e359c8847d2a728160cb65f0ddfa0b8ee74b713c55e46a618dbe114679824
Date: Tue, 28 Jun 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656391012
