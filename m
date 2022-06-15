Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25CA7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 16:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655311200;
	h=To:Subject:From:Message-Id:Date;
	bh=h7L14zIkX90hsGhdZn94sHwOp1+ua/MkKftNzZdkRQk=;
	b=fjwe2wNBj7PMaOGAT80pyNBMAd+LYu/ANLcCLFHkrWnvL0Yex8Nc9cyW+0UbFTup
	bjOCFJXjLkftCeN+0rsJr5SWG4LCPKXRo1eYTuzQKAgExjoa351kXG6UkC1wjxluLp6
	M5c4kFO1r78I81mZynbB9loAomvqrBXdh3NDhNYM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655311200;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h7L14zIkX90hsGhdZn94sHwOp1+ua/MkKftNzZdkRQk=;
	b=N3QFxYDsRVfbrTLW8ZMRW42qG5Ycm6WDfFBAtC8+6WqmRDQufZ6lDxjOkw40y4en
	LXnDlzi4k0REsQ/l0Cav8cXav3P9Y0f+iw8fxu08rY4nj3Zm+T+aKTf8rbTjhVavRi7
	jE6jJxMs/WV7FDPDK3RtH/5tfMzQ6Yh658BGR1nU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181683c6c23-fc649ea6-e273-473b-bd20-e5fd5e0d0307-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efbf104d682ae7d4ed792dded89b920b459669cd5549d94e24abfcf3a7715aa5
Date: Wed, 15 Jun 2022 16:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655311199
