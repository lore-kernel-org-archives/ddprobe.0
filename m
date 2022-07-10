Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137AB3C2B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 23:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657497412;
	h=To:Subject:From:Message-Id:Date;
	bh=D8giL6YPjvooHmCgKrvRtQzIx4ChtOJb8iUF8FCO8Vc=;
	b=lWesr5QvX7P/pkID56xrdGz/26SLPSR9FgSNyMAVNjsGGei6rrKZFzowUfxbAZOy
	ingaVqEuKCemSlpbAB7NGwIrq74Bsm2490TZsvOodRiQ7s3zQ3L8VwO6edTfRlbDceZ
	6hBpJng/NjCbIDuy9M3cGFlgBXMUIONRVk8iy5Fw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657497412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D8giL6YPjvooHmCgKrvRtQzIx4ChtOJb8iUF8FCO8Vc=;
	b=g3Zux+rd2NUVxKcjfjIVwMRLTYqEWj6IIO1QE+OGuP5TdtI1qVXRtV60rUTNTeuK
	8frBabAOyfXagDecojsqq0SMlEkxKJP583sGJssZPz94S5kvxJT1PmmHJMQEawXdxln
	fHGQXCpGEbflxEP0T4T/9MSNYtSt1ID7O8IfM0Ng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ea8b6295-68eb43a0-792c-4592-b6c0-6535b5d89fc4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5f30257070e684cde9bee9fc4c9fdd77bbb7fccedbe93ff4bfd47eb7c1c41c9
Date: Sun, 10 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657497412
