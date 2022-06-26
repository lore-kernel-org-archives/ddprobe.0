Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE9417FE
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656239212;
	h=To:Subject:From:Message-Id:Date;
	bh=t8xKOm6jnqXG5gF31xHYZ4EitAe8GaIhwcnLmFEQG0M=;
	b=bb7SYRCgR2LeuJsG9qNUv9YhvuWr+0K82qmluqouEEXVYDft69j/TZ0gijw+7glB
	HtEM1VumG7PDBCMpw84mgzSaeJb38pUrI0CLz+XuFGMRA430rSWXWvYgGjDWKPifXA/
	iwxVcXlNWRUNoS38w7wiEDSeBjpsweWqv/2DU/HA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656239212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t8xKOm6jnqXG5gF31xHYZ4EitAe8GaIhwcnLmFEQG0M=;
	b=eChrRHCh6cTytFgf9m7+MXKgIUxQKOAPoVYRQbO5hOSAxndVb40Sc9FN2+xOD4N7
	fNnuqS21/tsjy8VcUoR3x/gxX0fBV735rtQTzjs+ZJLUdQPXIlc1OkQ1llzOn4JxcYj
	Vjy/3V3N8S3UY2ssx6MvjftVs8LiLNhz20koRgYk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819f8cc723-8825b61e-6950-40c7-8b1b-4d6eb1ee2ca6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e5af40d6df6b074fe3e8e0257d4dc8314dfb6c7db912395895c32ee7bde5bce
Date: Sun, 26 Jun 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656239212
