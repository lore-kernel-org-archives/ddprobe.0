Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC0A4690
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 17:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658426212;
	h=To:Subject:From:Message-Id:Date;
	bh=ADskZ7wk0rEhl5EQBW8ZTcXLYkXqX1yMDEV6JjKnii0=;
	b=QWwU/8Ogr0oCNLJPyvyFwm+KgY6U9xXmpJ9tuv8Su5PmMEnwvzN+/DjQtMOm8tLS
	y4sKSFXYdUMEOD4MlAyEiONKNLdSo1ig7uMv/CI/fTRVjuwtabC+YxtIrBFycDoMOoW
	B7TMMmta6lODd0buQ0WEquZzTv5bUItt5jfGNOjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658426212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ADskZ7wk0rEhl5EQBW8ZTcXLYkXqX1yMDEV6JjKnii0=;
	b=Wy0QHuVJoF8n2FXp6YpVS8JguKZSZn7nXMJnRZn22KWFLj0083N1eC5t7FOaC0B4
	TUeCDtqVxyCr+6SnVaMxslLeM8piqIkR+OimYXdKXkkJ7/gHUyy6XGlokeqxpzb7UVt
	kU8cnovrZUZ/Ctk2m+1pbzgQMQDATeLF7Z4P4HN0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018221e7bfb0-f3260e5e-1fb8-4375-a4e2-6cf668f57af9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c9dcd9c9386c668bd5dfc2346baaf601c16473d3282b68bfeafbcd0ca759f49
Date: Thu, 21 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658426212
