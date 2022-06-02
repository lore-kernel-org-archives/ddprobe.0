Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057B27E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 12:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654172579;
	h=To:Subject:From:Message-Id:Date;
	bh=ti7+mHySq5OgQKZC02gJHncYWF5VXy1X9ccbrBUoNQs=;
	b=Ryfc+6bVmbVoaBx9WQAgAVX+npInqaCxMmO6OgVqAJyq+fnrFFx5xXcSXqceRo9a
	W6zalF2c9pVnaUpjjIad5SG/toG8hSw7QPRR2RrxEoZeiRkA0zhDjOA6DwvtVUPapOd
	WrC/H1wQdUn5SptEOexTeYQnlQAdiA394Ap+SEDc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654172579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ti7+mHySq5OgQKZC02gJHncYWF5VXy1X9ccbrBUoNQs=;
	b=GQVvHHFq1OrtoTa78NadjiGwJRajqDH6DxsP1yCyNsQCFEYlMCNXu2exUFjXXVAe
	EPDjGN53VHIxqEXP550zOS03BnM1xrc+0XmTJ++G2Th0upMbsiRIWnFrwOBol7qxyoR
	psAVrEQoXhwllovwZ7ph4b/AyiJ06ICNh0d1jXfU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181245e75a5-01b4c913-8aff-4b0c-8ca1-6d25092ae26c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fa35395f2014ca2c66ff7bbd63422d1ee62d559ed6d5aa9ede9a3eb801048c6
Date: Thu, 2 Jun 2022 12:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654172579
