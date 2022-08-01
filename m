Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697AB7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659342652;
	h=To:Subject:From:Message-Id:Date;
	bh=7edoP/fnvXGiUPwOa0YAE/DBCn2X8qUgk9pslAubGrw=;
	b=jAJcGqSWhNX5HZnO8JThITtLSFz0qEaz9oRqVW8D1KjIsp3zbux1t/YEfbUM/lM9
	c1VWhCosrgETqrpGCQuDafQCCpXCP9SaFSS9y2SFU9wTmHwYlsH64Sz4wSg3PjLDHwy
	JW/ZbITQkoevE/tA78Y/kSUsABS4VysTXgjOi4DI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659342652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7edoP/fnvXGiUPwOa0YAE/DBCn2X8qUgk9pslAubGrw=;
	b=dG6DiDWD6KpVERsh/AhQzLsb8Orv2UKHZop6zaZG1CNYb8wNHpnIv7uf4YvmIZYs
	QwZcGQVLMfF7l9I8T7tjAPfQXNFHiDomvzYy2psPWfDt7X5SFcZP54LhCUmnxahsyaf
	Uugyy5BbxIstJ5EIBxfYirEFu8QjqbJCyRqvtSbw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182588784a1-89141d95-fd57-4e50-8cf0-ef1cf89fb1be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e74c2cba62ddf9ca7c61c3ad6e0750b778b82ddce76939d5502f55e9af5f4e63
Date: Mon, 1 Aug 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659342652
