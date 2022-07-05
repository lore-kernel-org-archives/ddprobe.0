Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA0E2F2D
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 23:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657065412;
	h=To:Subject:From:Message-Id:Date;
	bh=WSOEfybLgOMkCYyD/snpXMnQJWo2GTabTlF0B8r5ZW0=;
	b=euQcORakJCkyOKWO5ZowdRMXyNe1xUKibmPi4diOC4PBmo1isDLDQpVQnTuhuUgL
	BDoeNYAitR0xjydE1xIKcPzy1UkOEOyFJbe1jlxak44Z1vcILDbC7CGN3kaODQRGZbg
	cQwX0nF76OY4vgBbRk/f2ORBZm+hpQIawky4eWXY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657065412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WSOEfybLgOMkCYyD/snpXMnQJWo2GTabTlF0B8r5ZW0=;
	b=C0yJMCpA1ugG7r/ygptssEM7W4pspQX9JNic4c+/R8ms5rtMzeHaVV/zoDO5gLY9
	/lkCg2s1VC4RA/tmEM7q/e4NShr3ILTTIDR+fQNHGu16szxKYD8Zkdu6vxj7+Ju95CD
	l46Ee+Gb9/TPmviW1/L3sFzG78N111cX3e+fqWmw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d0cb96e5-7ca84754-2ca7-46b0-aa47-6ca31d9b5947-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36ad235ce83ae57a94c8ee7243452e7c180a604834c4ae7aba32f1a58286544c
Date: Tue, 5 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657065412
