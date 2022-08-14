Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226CAA3F
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660458052;
	h=To:Subject:From:Message-Id:Date;
	bh=Y8mC28BfJkvRivMDrVUYHhbHlAnbfRZuYR5vA6Ikhx8=;
	b=ewOjNRyOxHlR7cNGN4lfwTkINaFMMAp4zuhUTAxOOCFUfvSZHmsqc8h7mQW5UbAz
	o+C/B9cc7DJ2ZGEwxZDSbFHswcgGeoeUWzlzpxoDOkTEgVUZDr8j8HcdN2Pbb/y7NNT
	ul2rone97TS1i4j4+Rlg7iFoFMaqDeH4qQauUGBA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660458052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y8mC28BfJkvRivMDrVUYHhbHlAnbfRZuYR5vA6Ikhx8=;
	b=gx3SUa/p2vcQIZ7FMq7INIEiWdYGcAHvJr5+RUMrPLM+exU5h2CfkY/RRS1BxdaQ
	aAYhTa1pBjAQaXJN+I/Wy/REFX2Mm/PaJqNWGc4xIho6PfkDRMaKDEHfcIPOoioQjkZ
	1FoLq6GJPYFOvys4+TxmLe49cRMeb1hhagGCFYZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829b032be7-d71ee784-5324-4e4a-8083-fa5942619944-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40fe50ce0517f1aa89ad164c49cd10ad32488f4cd34207c13d0391bf2a62119a
Date: Sun, 14 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660458052
