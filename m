Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B264C82
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 14:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657117012;
	h=To:Subject:From:Message-Id:Date;
	bh=wonJzjpYL4/ECBwqB00+fW1awH2f6oAAawgBaF1D6Ks=;
	b=AXRKzZBF2lUhGkO0BOLrhYuBGB7t6xxVPuzNHaLgwqiVGRfdvhyMz1plZwVhP3wg
	W+3vOjJyguXVnUWOSAYXZvwk2DeOdKwK37urp3H9B3P/WaJL58kJa5exkV7ZbFHwJF9
	BDPwcXkbnW3YlHvE3rCuf3r76AHTbBCI5HXogA4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657117012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wonJzjpYL4/ECBwqB00+fW1awH2f6oAAawgBaF1D6Ks=;
	b=iguVSJqA4O8PMpLPnZGie20+j32QsvDTJhhEaEm6qMisQtnthf4SEkXG7SiQN5ub
	gk3lcoVnU8VyOgZrTzT1aiv3W5Gejpet5HG6uQ+iErq2bXDjCXveu1A0N8WPfRUKBys
	hgWTPjFhml7v/KJfq64ru21tnOlr62nEozwSPniQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d3def12e-d50967fd-f767-4d0a-b71a-9a610f3efd41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c4d41d6e3524bffe1e030c85b675f7b76c49fe0d1c7ffd8b5bbea590b490906
Date: Wed, 6 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657117012
