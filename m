Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACD161C38
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660578053;
	h=To:Subject:From:Message-Id:Date;
	bh=1cPCKPmKVYv2BibS1UX9GhBGZ7cxnXzJU1rO3lgAobg=;
	b=VhGqo7z+k7Obo8sMAx52/92P+TrDIIrKOj9izMygboA6VpmQRavT5UMKR6cpmGtG
	l/yw8T/1T/rQ8oulF1dSavA9+3vhffEYRiQeTFPrI6jwk8MN3flfrn+L9F5q4tIdlE0
	sBHcTun39M2Z6T5hp3U9v+FpXW4Na492ObogZ9p4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660578053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1cPCKPmKVYv2BibS1UX9GhBGZ7cxnXzJU1rO3lgAobg=;
	b=Dr+fLiQGVOg+jcuLi3d8XUNc4Oh51J56Rr8dHgFxUHVbhpwqAKmln0fmIjv2mYc/
	xztdrVwQYh0LZwlrte9han7PWM7uto+tUZ2mJYD/PgHc4s3dm1hdOhuxmteCYcCVtme
	vs+G0j0a6zqk+2h134thhV1rU26ngIHteMcJbkoY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a22a3a30-1faca739-2720-437e-a730-c8c55f143fc7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a05014299006d9b9ea415dfcb8a8eb0040b2a644c379ac3e8a36f21a56d32343
Date: Mon, 15 Aug 2022 15:40:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660578052
