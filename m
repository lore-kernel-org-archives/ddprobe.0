Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033E562B
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 10:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652523059;
	h=To:Subject:From:Message-Id:Date;
	bh=Irh0Q3S/6gz4jzncdso9qgWYZcz5m4ktZ6uLB1ngY8E=;
	b=bA/7w1CIHugnzMFqF/k/GKnrtYsFSz8/HevSxIw7aVdW8k8wOLZWlsje94EFmtsv
	fwNtpQNK9b2P002Sz7xF4ToQzrFFwR4ovZr6Pn9tJ7owy/3m9PiDI5UUYb8koQb2l4v
	ilbFxwR8gzg2YF5+VuGSQroyJF0SX4LCFMt80jfs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652523059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Irh0Q3S/6gz4jzncdso9qgWYZcz5m4ktZ6uLB1ngY8E=;
	b=VAz6PjJEaFqrgyWcTEPfUqlUfrbO2L9aLjspd1jbTFQqgxoeaMk2syuPVUxCFJl4
	Ve+2CLObljE2hGQvS5FhWp/bryWHv+5wGDk7A9zslZa1X7qh/KfKpXoVcWsNKGKMjX7
	LMd5lSkfoJASEiTU43R8mkoq3YL+dBjsphMhBHqU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c20cc834-a8094b47-a6b4-4ac1-83cc-034b7810b5f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 556673170ad7151aa2db4068a9b9f69fb143bc627ae15ffe31c29e2141f3f9bc
Date: Sat, 14 May 2022 10:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652523059
