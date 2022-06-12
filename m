Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6A82F21
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 23:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655075819;
	h=To:Subject:From:Message-Id:Date;
	bh=OzhAhRNQ82cPc/c7k1l6IIde4BX9jUAQjcT8peNNQBs=;
	b=UHkAIOxpsfJvFNRCtan89m9D/2i7jkWe3dym1l6eAPmgSjSN5R2cCf3M7Jnwo7m+
	oIMvMPFizm09MTNHHiVbcacJ5SDbKKk89sbtxBtqMnhz6dA6EGa+EtDlqgC+04g29aI
	vKezF+l1cLKOScqAALGa8mEeUMVXdfTAHTPjf2JA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655075819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OzhAhRNQ82cPc/c7k1l6IIde4BX9jUAQjcT8peNNQBs=;
	b=fO3qvIN1WwF6+KUOZ0Pe+zHUMlG0qoKW9AUYkSH3RbE3k6RgDBnjyj05neZXeRsJ
	Uqy57ZmX/uJS6UDOAIE7FKfyPZpR6ps49p5fMIv2UbRrwvmtjGDaRnC6B7pJw4wOa59
	UX3sLszWQxYAztPYweBXdhC9tpujJ0XgxC25bgJY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815a34cf23-44838148-3562-4a69-af47-3e724e7a473a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe05d5b967d88c945290bc5df797f6669a7bf8686c13e3612166a9dec3951360
Date: Sun, 12 Jun 2022 23:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655075819
