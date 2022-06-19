Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2046C7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 19:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655665739;
	h=To:Subject:From:Message-Id:Date;
	bh=SIxHoGZIGHvNUgR5RUQng7dHSkX1HT0xnwT5y2LSPng=;
	b=EOae0VWPN97W5/w/yNxLbCgtM9rJmCIbYZbw8DDEaaFLJ8KH1xU46IcyE1Hd3yEO
	qrEUszt2ZfHaWHNXsXDHgjJC43aNq+CWyN4hGPPYF45mVb+Zu+3LXU3q1zuX34BQsPd
	145O1V75HZIpWVO1s8nIzfWaU4ZVfKL4Gsxj92R4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655665739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SIxHoGZIGHvNUgR5RUQng7dHSkX1HT0xnwT5y2LSPng=;
	b=UMJPEwPI9z2XkpxDgmPxMFmWkkHsL8+UIpY0f10L6KTyctDeVdaMpLRJuNe0d5R1
	tkA0fbpReXWJHMlCRYoG0VaV8FwmrJBAgce9WZ9yPs9o1by1k5he7p4H3ice5bqYl6b
	zQYTAAjO3iACXRZ4jtBPiGpycLHTzLWTAeExsnqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817d5e45c7-83cff091-fdbf-4560-920c-ec9edc54acda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7bcd7c386d17e4c4d35aa45ccdfd3f30ed45d64b31f123d5c05b79717ff672c0
Date: Sun, 19 Jun 2022 19:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655665739
