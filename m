Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54330A3D
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659679252;
	h=To:Subject:From:Message-Id:Date;
	bh=iuFD1s7YcDk3grLS/1fE5DMf1HzQSX4yKsUCMHo8htc=;
	b=ZUhjPQtX3dxA16KQVDI6co1Fk+RXCsjGbRRKNPkhv6h+gmvQx4HT9mylkbxo6xRE
	Ly/BPbC/THe6h1E4W6WN6/wXlkQuqF/6KBDUJwXTnZWXp3xHifUbIjOX7QIWiokccNW
	XmjOicABwwQXzwdAWoFJp9oxEUGTfO2PLAxGHouo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659679252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iuFD1s7YcDk3grLS/1fE5DMf1HzQSX4yKsUCMHo8htc=;
	b=AIeOgRCsvtJmxCB4qglaX9cgopfWaG1Y82rwJarZZstuEH6ouWoTMBfr7f8yYyYX
	7KI5kFj9mvAf00iSdRduA39yXYklki0ImWuX0Jm60MOz1m663Qd3ABaagpTnK/kF2cZ
	o3TwHYdxkBZn6Uvu25OO/JKyaZ9eYUx+cQ11iGEs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826c97a040-0d7d6286-db8c-4780-83b9-749adcf67ed0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4261fa5680238564918d913c04dca4941ee9018eb415d5e09e8912461956ef79
Date: Fri, 5 Aug 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659679252
