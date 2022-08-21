Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617627B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661107252;
	h=To:Subject:From:Message-Id:Date;
	bh=LNpAYbMqXhHCO3PjZeCq5FHUr/MjU9Sw/oQU07AxOow=;
	b=ljN4Oqs9fqnGjXHCLgvPgYW1lbZVe+QOptpMM0xogqu8PpNuJMN3irffzkY9k59O
	UGApnlWbSJNfsC9MZcycf+FR4pJuyXjPYpP/DO2mqYD/G9lEaCkPUJIg0jVArzeCdGS
	MgNYTjBqKRpEu2WkTAgb4qPk9qCHyrU/+B+y7iBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661107252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LNpAYbMqXhHCO3PjZeCq5FHUr/MjU9Sw/oQU07AxOow=;
	b=hnn5gCTHjTQKUSPEYl+M6OhrsuI9twde3rodgEVoY9bpzv9ZrC5C1qmPq3EWLVJE
	inM3fdU3crKcCN7AJPTdaUhEEIVelfXmK2VXJfOXsx0lmUZm0g93P5OvuJit/FrxOLo
	QxBrFNgvi/xXFWhHccAlESN52JgFigRuEE/W1b1k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c1b52d5e-5908a20f-6a5e-4bd8-a8b9-06985ea7cb61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c68e0e34d1bcd17c83ab2cfbc89ceeec10ed739b2116eae21b2b635010c6c77c
Date: Sun, 21 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661107252
