Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695A43C00
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660689052;
	h=To:Subject:From:Message-Id:Date;
	bh=Ip5siUB0MJidia5mXTDYKWgmxb5ZSKX6Nh6rXlTKtfc=;
	b=RAhWNWhIWCTdjS7fYwF5fHZvwcBz9HKjRKY132PGtiJFVa8amiET+rAuEG5vXIRo
	HUQbF9fSzGCLn3JiUbIGAxD4y6sn2AcD9kyOlW5d5UG3BZUT9b0q67xTr8nvAWugk7C
	7j/3zWIRZY/veCSWULxMY9m93KApRsv4wAiZh/hE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660689052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ip5siUB0MJidia5mXTDYKWgmxb5ZSKX6Nh6rXlTKtfc=;
	b=SgrSWTXWZrQLdItNmjkWHrm13xmUfr2yHaPcovRKiv+YJmLY3nGYnMrDTXwXbPnx
	IgFq4K3RI6Jl9oTN9l2fnVozt5/ethYu7KbS5RGl3khxbkqQMQtA5XQYCy2xSprrB2D
	Y7Pn+JFpCAz2+7wPZp0oLfNrDdQ5/fQ/j4PYTfAk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a8c7f3e2-0e76771b-df05-4a88-8579-a291011182a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcf20ea745f4baa1df9d633bc3342789203eedd9d70d952394c452f0eaa04118
Date: Tue, 16 Aug 2022 22:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660689052
