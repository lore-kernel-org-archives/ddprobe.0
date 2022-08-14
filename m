Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3191C01
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660489252;
	h=To:Subject:From:Message-Id:Date;
	bh=1AbooOoCCtvlvXUcyMlh7tCR4lTJvj4dzxNB3qgfcNE=;
	b=L1e3d609Zw5eewJN6eAkzQLgNJnHD/jHtr7giCNjXx7Kt+JbCBjOJ7U053jlqNAv
	x7mFacNVSnneTKSRsjUUjdO4HlkT7zieKE0adeE2PP/Tv3FmZo4qaUls8+SNcgitqih
	PDndffzwPq3RDDdQ1l0o1YcMqSRfG8vXoJASC5oU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660489252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1AbooOoCCtvlvXUcyMlh7tCR4lTJvj4dzxNB3qgfcNE=;
	b=YKo7sMT4KHBcbw9tfBcvV/wXVG9+i4tekocTYaZOYcRsOoOXvugThJuYVZsccCh4
	UTZ3P+HVLOJYB8fWfX0bWoDBs+G/bVChU/1D+QkAxB6gnlpHEN5ouEx56j61IMPulmg
	STEsCyVoIfKvvZPbDUX1rfAl0fvC5sIEcqpStb+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829cdf3eb0-c0fdcc03-1a67-44cc-95c5-8e95bfd707dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 422d573cbffb05cc740aa5ec91308ef0930ab1c91b19a45f86947155cbabb92e
Date: Sun, 14 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660489252
