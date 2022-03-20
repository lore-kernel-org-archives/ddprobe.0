Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73CEF7A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647738984;
	h=To:Subject:From:Message-Id:Date;
	bh=BSQ7OHIucSqOup9RFEuuxZ0TW2PYi/n0XeEjNwHj5kw=;
	b=dJdrsBXpoZTlYf5hWjlJ1bYkD4UC1aMC9qp1kVZtRJzOBbN332/0RMQndsgdoXnB
	EonLgLxiYS88xM28iqg5KTAGQW3MZ8skYYvOnKzO9EV657kRMPOzhCQAsYb7XiSS+Gn
	PgFh+5Wqo2XbxZRxBwQXOc7drRp10qXn+Q4pf9pc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647738984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BSQ7OHIucSqOup9RFEuuxZ0TW2PYi/n0XeEjNwHj5kw=;
	b=GtuiPZtgsLU7RSMaJqtGrWyhO7RRZq2JWog9yLU9oLowZt29c08+29jkFKRm4rdO
	FonXc536CijzuKa3nLIbt19/gOvCfvMcDg8QM8zVgj3yulCj/wV+94cqGaf+NXZ9n1N
	BbdLkjZoArX2WgvT1b27W2a8Jw+W1r/834IGDSP0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa4e59926-2bd1c1d2-5239-4a1f-b06d-eeaa7c629268-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac3ffcbfc3d7beacea7f82b0d5e8f061197fbe063ccb6f20fff17feb10d60593
Date: Sun, 20 Mar 2022 01:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647738984
