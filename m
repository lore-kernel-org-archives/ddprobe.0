Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2071E3236
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 20:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653337559;
	h=To:Subject:From:Message-Id:Date;
	bh=3iQrtEge7kPG0RtBjhFCDVaxVZy/63z3hdAPGJHARM0=;
	b=R3y4yUhGce9eLZnkwgkH79Wqn6nUY0dPWO3hth7eCX5OpoTtZFEa9qEpP6Twj1Wp
	HstvVVnKiWyUdZ/UFS9exKb0r+bS09XDwUayrwJ3lRzbU0MXkNFZbLXhRianabhewlJ
	1AiG/2mgnG8YrCQ3EPf7pYEfSgt4Ev4F+6CtSAJQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653337559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3iQrtEge7kPG0RtBjhFCDVaxVZy/63z3hdAPGJHARM0=;
	b=B4L6W09Pvc7SbOuDIE9wENZAiw3F6e9Fk1lGbDo4pYHxZyG5nEbolyrbA2uKwrTF
	szsiNmm35efu3JhBhNeQXhJk80P3AJTYkDZXpjRwbiBkNEX5E6tBHWOFQqcW91Ti/D9
	11iybEt7/4LzWWaFmGrteHK1JjZw9G8LjoJMN31E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f29910e0-4ca3ce34-0cc6-4a06-9df2-a9d5bb3bbe25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dfe4d8c6a8908eb160a595383c85fb62708f7c8025bbed527982d9ce6f43e8d
Date: Mon, 23 May 2022 20:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653337559
