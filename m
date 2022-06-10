Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3EE27C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 14:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654873139;
	h=To:Subject:From:Message-Id:Date;
	bh=WMtCMTE0NPI3P9toULal914LiMi1WVWFRuo1qQ3O2+0=;
	b=CsE6oAZxXy79ORLa3igpZ/PSMbf7GhBQMsLnukuvF4xVRwNkZlhDPrJovIVRTOnX
	mKVReV/ymbAv60zZ4fGtG8kOuDNSnrtYwtq+7grwR0NoLPRzEqGPhNUSaAR+hwiWk/L
	YX6p57esyYH98G/IKqiladwhlGpDdbniZ2d6uDc8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654873139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WMtCMTE0NPI3P9toULal914LiMi1WVWFRuo1qQ3O2+0=;
	b=Ph4Ay8c2T18JRrpnwP6cKLwkywuQhgB5MtOElFaMyImreqfXSkdD0sFl2PWVHFpd
	dK7ZEAx47Qav1iwomGb7Ug4e2hQbRRA8TcbiYaqyF2RxXzMKnzSx6JsbQ8LDoS8eDgA
	2Ed6bLx4g8XXV4EHUrCZn4ooR4t5KfKKlbL9fb1s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814e202852-2ffe3b3f-0337-4ea0-9670-78668ac68d7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc53f005690afa0a7ea92114d4ed25d7d577e4ca96ef6b2bab75fccc62da6b40
Date: Fri, 10 Jun 2022 14:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654873139
