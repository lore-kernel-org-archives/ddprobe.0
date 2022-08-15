Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABE510EA
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660537252;
	h=To:Subject:From:Message-Id:Date;
	bh=K7BXgtUVMLYxKYvd9TTuzt5e1u1AYJG/c2AwSFo8Ano=;
	b=lgOs+xZO7xJx0XudPxbASpGNUZwWMCBS6j50B0e2c3aK0aCm+nNpG5Tijgzw0mrD
	1oqjoVY2hrCla7rkMlf6HmeC0L9iYGMldh9EhOFhMokwEm9rYQ9Oig471uKn4MsMMiZ
	3/lSoeU/G8x590D6mZsKFFaB/9WnY7XRF/zSbYwI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660537252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K7BXgtUVMLYxKYvd9TTuzt5e1u1AYJG/c2AwSFo8Ano=;
	b=VD9MAfu7wxIdLlTeubpJAjHdC8/d+MHqNjoZri02Nc5yNs1AMh4WMsN7fOY3iHn6
	8rRbpqOHayXgGboKrcko6mkqtH02DC+M+AJ2OfKXkJqZpV2YJu240+Ukcm8UFsWY6Fv
	S23s/06/W7ZJtouTaK8Yxx9fv6Htt3Xk4LJwQb5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829fbbaaec-1923b46d-167a-4ff7-9ebc-e173973ce8de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ecc04c7b59b1af9d55c37b2578fc763c1de37df9322fa731082d88c9e64b6c7
Date: Mon, 15 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660537252
