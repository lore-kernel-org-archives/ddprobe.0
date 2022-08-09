Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A1215A6
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660005652;
	h=To:Subject:From:Message-Id:Date;
	bh=Ck9T17kT5MM7tEkhkLfGZjHBQyrBPbyK/8QnvgPt2sU=;
	b=jpi0vVsl734HtO2C0K3B7YPD6YsoZKqrPwgJPMxCUsu7m5nlYcu6kSD0jPmVyd2/
	MSVAXeh9kXGe+XROpVPbyz3TXjSIE+50HBxUrRE91l6yTf8tW3a4EuNPgjrRg6uVbU4
	JrHgxCTzESu0oY2WFOtApAKFiBeSSDQ1xGQHPtE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660005652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ck9T17kT5MM7tEkhkLfGZjHBQyrBPbyK/8QnvgPt2sU=;
	b=CGMiOfm91997kdtc300RcWCkKbOOH7BavsugRb4TCT9KAu5Mb//VhnhzquET2Gtp
	eSD2Xl1weDHWdHMGKb1kkPjYZ2UJf5mUhtD186POWRqThAYT5ecsOSDBnbxw08VzgHL
	1x3n2gzYL4qXzOMYMWFM/aLaWz2rW8WyEUgGD4j0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182800c1859-26268992-5688-4540-8702-022613c6b6a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c12f82f4d44d58e4eb1da1db576ee1c8a9e6ae48243a1a211700a8d68bd45a0f
Date: Tue, 9 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660005652
