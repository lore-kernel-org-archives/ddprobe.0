Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32937B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 03:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655696039;
	h=To:Subject:From:Message-Id:Date;
	bh=BxfMxTlgOquCNVFfmM2b0NwyS6HCtD1jMSiEp3CzLYY=;
	b=VB5LE+KH5CyCMdSfkb8M3fZ7CdgLaDykiQJnIuWK2n7C3rhp4nqyVeOPKsiq9Zx5
	W5hwPz3oZvk9mScuiNGGKlNQ0W3AxZ8XbsQfyhzHWjAtOJjwQtC6TINJ1QLiOmUSg4u
	q87d8BnBjIP0dwHS2vbi1jB0nA6XTampIDocyHR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655696039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BxfMxTlgOquCNVFfmM2b0NwyS6HCtD1jMSiEp3CzLYY=;
	b=CO7bdx1X3N9Dd0bQG2eifL7DmRVj9ilm8qTpPmtRS9XH71VVBIs0gYeC6pgPBZx5
	KjJ/4OP6yB88dieM6s7rLFRp7wBByywtSh4xvBkzsFyrJSxpgaLTtVEyrLOV2LnzZ1o
	K6Pvc/gjdfxupJhG8TfEnNllRlf6EX0TqL0FXik0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817f2c9d4e-12d7a450-cdbb-4ed1-992d-b460e27eda67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58ed7d092243fb59267017edd01a3573eafc099ca507149eca2608576daa3c09
Date: Mon, 20 Jun 2022 03:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655696038
