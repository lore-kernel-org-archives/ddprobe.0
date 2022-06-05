Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BFA7E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 06:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654409759;
	h=To:Subject:From:Message-Id:Date;
	bh=90KPiquQr6JWpFJl7vqoIpTtrV/hivpvutE9AVoWM2M=;
	b=L+f1qUX+OYd0VqL1Y8J/b/PyBNlsEC3+JCTm9vMMO9/feJUTaEs0/JXLAAYGSY8F
	yE62s9bDTuotuMmRtdZhXG9BwCHufz4lVvndfqofulZvINuqPnx4dWox9ZLIXbY+IrC
	EH4bDJfE+hI9bAW5UQwsayPsIojBfzJemg7eoSho=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654409759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=90KPiquQr6JWpFJl7vqoIpTtrV/hivpvutE9AVoWM2M=;
	b=MiMd5MDgz3ZPOy7crdwMxEQ2J7aidrT2t7hh5bYUvlCQGrEJj4aKjAHp3U75RFNL
	GAwxspFeHKL08fgn6nSYaYFb0eZBl/nLqp4wk946VhqQ3VwkrZJ6rAR3txCOFrGhF3z
	fP84vr+eb4Y1YY9/x/jHeFGfuGuQy7UhQ0iEz1kA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018132818a2e-cd9be6f3-5bfc-49e7-9691-111a7adeb602-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c4e82338887ff4d0c71d8a6cbdca0848d402c91b19520c2aa1130fed5ac0109
Date: Sun, 5 Jun 2022 06:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654409759
