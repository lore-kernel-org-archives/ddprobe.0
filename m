Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24DE210B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 10:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654770599;
	h=To:Subject:From:Message-Id:Date;
	bh=Lw+671jcFg1qJf4WB6j7O0A9h0t8h7XGQ2KZxq2r0NQ=;
	b=csa5agkYh7OJXyzY9wGp0Y2GJVtolshDwDPBSYNADHQcw5zEinqq6PR6YYHqB3z+
	IDeMElUgwX862v1x/qdT85kC3CFcCtE+VNbJxGeLsPi4LXYsybvaGQ5KY4yDGxyCOB2
	7vyQm31Yb39SCoLQAy0cpQsCethNu2pKPbhDXYgU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654770599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lw+671jcFg1qJf4WB6j7O0A9h0t8h7XGQ2KZxq2r0NQ=;
	b=ObShDStgdTQgrXjFPLBT64q31aoVKuJJ7RPSjzEXtTwO6d1H1xwUNokosNktEdUv
	Ywk8d9j5RjH7xS6NGNIT6tNG2E0WQ6lUxtL/0aXfAh17TkouM1n2SwGP3wHkm3vuMCu
	+3Oy7tqvyBCVzeqRvT38Mt/dNS4rTx21lVj/TqZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018148038572-c587da9b-21b0-4065-96d3-10483d2cb941-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c17c34de53dcea43e124cd7b1b1f7c6421ab059c24cb530e32ff3ba59db0b09b
Date: Thu, 9 Jun 2022 10:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654770599
