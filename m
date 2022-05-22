Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125A020F7
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 05:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653198059;
	h=To:Subject:From:Message-Id:Date;
	bh=zYu8DAwvgNuRU6jD0ITHh1dw6i/63hv4p7IhD8cqN/w=;
	b=grWlhgY87G1kDih4ZaNLV/h4fmE6k07eqiwcB8HQu4yWEPPnQcEdr96DJtSQmNKb
	lXghRrLuHQMoq5Y7zuOOgZpFMzX4CKzmYsHkiJVw6RkDwa9awcccKjiulN7wEhYXvUL
	k+B0v4B0lM2ziXUQ9CiqqVBzR5HuzRGy7+oYFhNQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653198059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zYu8DAwvgNuRU6jD0ITHh1dw6i/63hv4p7IhD8cqN/w=;
	b=XrVfxp3G83Pt2zCAWYVsTU7jyo+jRZYkY2jG+GpqSxyg1vBn8SN0rzvWmqVGw0/i
	Tiz/odVUXwdVTBSTFs+6vKBju330omhvpgLUIzQC3oaM1K/y78NwA3IyymTLArvlFE4
	fV5mztzuPzqa3czJDkGJMbAqXqsRRM2yZFHreJh4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ea487720-ecb49674-1ec8-4487-8d24-05a689e67457-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11df076e238b8c73ababacd31c1ed80bc5559295d99479b081df2a9622339a7c
Date: Sun, 22 May 2022 05:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653198059
