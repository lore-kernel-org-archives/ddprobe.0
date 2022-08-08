Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFB93D88
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659982252;
	h=To:Subject:From:Message-Id:Date;
	bh=rt9HCQQSHoFWvj1O8TjGMspdJ2NDdH6nCaQATwGkzMo=;
	b=Hlho7r0hP4Rg7b29nyQmt2W1OahrVz63cIPCkIA/lIthZILPxguy9REbtme6VdrN
	bPihCdvgm+kSi0wwH0oamm0lvSQJ6yahZrlxaPs5GHk2+o0TB4478Z0Vi4igssAbbg8
	tR/ho18rZbP1DjzfTJyHllOhjDw3DXn5hfJkQTW8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659982252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rt9HCQQSHoFWvj1O8TjGMspdJ2NDdH6nCaQATwGkzMo=;
	b=Fo7Kj2PPHIiWRhhTyM8HyrXIWis0gucSFgDp9G8NQ3pFDdI8bM5SnpJp93C2mABV
	NnOpKu9VxRB7v+HR//zZsp0oj0cXAgUKUrhwzhMNeqbKpPam/3Vglbax/4bPBdeKRCP
	np24+oaAzuf6QcPAcP9XMkk/x4jr8xRUNQllrzAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827ea70a17-18f14061-808b-4403-968d-813003f78bf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e38606209441a45cc34ff44ce30b3c5e6704faa071c0e14e515e378e8f77c87c
Date: Mon, 8 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659982252
