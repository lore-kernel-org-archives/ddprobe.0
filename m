Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076607C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 18:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654970519;
	h=To:Subject:From:Message-Id:Date;
	bh=9SJz+TCwO9cW7tg6Q9bsxOhjcm0EYaAuXADP1UOc+PI=;
	b=SzpULqwAnIWiEqiLVEbxjlcVvy4PBSqLlpC5tkOT2qS5kWivdVZejBsbWd+dwqaW
	W5XY6SS5GbGDGDHGg4x5VSJftFbSaHWfqe2lS6b/dbeivNGeksOVWLJ2vRv/167qGWk
	SybhUO0fl4wqe67Ybj1m1V4NC3ks6cZ1Sqbex7bA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654970519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9SJz+TCwO9cW7tg6Q9bsxOhjcm0EYaAuXADP1UOc+PI=;
	b=UOP5MTEaDNN88ua+XOxJ3gRaw3HwVeI40lWqbIaz9nn9xyNX+t+A5qfPSM9BgtL3
	mDfJSFycgi72YNxhW7llcqsrm4Umr7xdN9yfsnplLkRDM5uHEvB85fVMJKpOPpNrLJC
	Lr6eoUDKeIi/B1Ga0V9Eyc1Dj/8XRPDig5C7S9jE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018153ee0ee3-519bf84c-cea2-4ac9-b6e8-069125d737e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdf827ca1a10eccad651bf77e02f1a56deb7f23ff9d9fa5aab925cc18886629e
Date: Sat, 11 Jun 2022 18:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654970519
