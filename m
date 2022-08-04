Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB6836B
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659588653;
	h=To:Subject:From:Message-Id:Date;
	bh=ugDNX6CadKADBwm/pEU0SCqn7tKRxb7NKi8AcNe3TSM=;
	b=PCZQqpPc4HypKoPNW2ukbWNMXvR536ys7X+IsDSDmT1MYHKgDU3eSOjR2lOWp6gb
	jFMDF8aZFqkiNu5ZIC5AXcHJuyYHvmqlDvOZYLfN/4oOh5J1Jbk7s/8L7NYfHLHapCM
	BZ2J2eb14ZffpZ5+Skv7R5GoUXrvgfA2h99kx8tE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659588653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ugDNX6CadKADBwm/pEU0SCqn7tKRxb7NKi8AcNe3TSM=;
	b=AnVcBNKnY+66w7ZVkMGZIIqppFvsgPrLvddlvmztvrYRZglUyQEpd7+M0m02H/hp
	NIDZ6slc9M/XaxAxwN7y68BG27kpruEw1UA7YS8V6qHZ6fS7/pwkwD9GqDd1wr6942n
	R/zttT3Z6lFgI44Gw1tc8cp7lZv5vHQvRWlvGvPw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018267312e0d-5af146ad-2482-4b44-880e-65235ac6cba0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d948266280dfb4530c99f77cadd8f186c69105050a0439457ec5a12c41ce2d51
Date: Thu, 4 Aug 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659588652
