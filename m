Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540757A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659991252;
	h=To:Subject:From:Message-Id:Date;
	bh=YVHmKa8uHJFsVqbkGu9mmOn9tvTiK2vNKdp73HlG2NQ=;
	b=jLLCWjjT9o8hq0TjZO9lW7RfG+oxdo2fIHpUj1TMRvigkVKLDxkPCGTE2SW0vfPp
	4pz738h4Fer6BBfWi+4ybBJnNXe0ZsCu1UhVJZ3TRAbaqO1t4A8F9LYnegggVrCunvJ
	KeY+sPYfhMWebozCWR3VrJBwq6e68EQ+YnGRuOXo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659991252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YVHmKa8uHJFsVqbkGu9mmOn9tvTiK2vNKdp73HlG2NQ=;
	b=MEOagjGmmB+FNU6hRERdqZhb2r1hloR9zfQO8TTERwXl3DxCA/uIif+fWuvkzyp4
	fCeGuwUPLqsrtroKO2y4qfziSApTLEPZY2ms3zpv3gEwnp+0hmxHJxasoLaRYK1U12L
	FyorQ7TJxjJuFfJiX0+gC/E+5VUDAm8JqEpSOSjU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827f305e29-e261b826-5b8a-43ae-9f82-acca7606d4d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 566c56c232ab750f4936aaebe4e78140ef6c1a8b00b84b21d9442d78ce3bccb2
Date: Mon, 8 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659991252
