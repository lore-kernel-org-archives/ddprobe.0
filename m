Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCF946BE
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 12:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652876459;
	h=To:Subject:From:Message-Id:Date;
	bh=8SrPt3MEyXhnMqbOlR8O8Sh+5z5HJ/J8zXLMtDZHz34=;
	b=HkOkSa/YWce0RJi1OeRwTsXMnnyUKUTxFgdJgu4q+yGxHBRV0HKYyozl8l4d5Wix
	d+V95MdQz6WcfGk0NHWzKBd1I7FzEx6G7YrOor1D+WJNkgpKAIXSsD17vVkD61l1FLm
	QrgBUzIKOSZe4VKmT9senSA3GzWrumDP0Wim2cE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652876459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8SrPt3MEyXhnMqbOlR8O8Sh+5z5HJ/J8zXLMtDZHz34=;
	b=fLa+uGq114rH0lGKQp9emM7E8doPOO2PQxYqADJDZpqM+JSjy54z11bdwr84nilk
	Tkazm5FaIdz1F5+uUDRnpir4QiVHkDMqRbKdWFVkm+Pe7WrQS6Z+NPSTq3yzP5KnJ9v
	m1eRUiRs7ZScWlt/nGiE+CpB9Sq0RCmk8xzYRLVE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d71d3d21-018c25d5-38a8-4ff6-843b-29c560406126-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ba6b920e8cebcf61bd2b3a40a3bc6120c818685b7b40f8e2077762b579e4601
Date: Wed, 18 May 2022 12:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652876459
