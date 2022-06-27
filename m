Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33833D68
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 19:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656359212;
	h=To:Subject:From:Message-Id:Date;
	bh=BRFBAs92jFdb4kgJCyoaEr2i0q/I79WGcJPQj6kYL58=;
	b=MWYM7ovbTpRhwQwfaI7+SbXfVPiMAED0sUFttYzV7R4IZTGIjG7CVn4rnjxtFlPQ
	3DdIMYQUnTfrLwBfP2+Ysg2ADLAQQWJx8rS6EbIpbOxAi/mCPR2tOagPjEineGtITR1
	H3uf8h/aYlD3nt9dFrJv0XX4VKpAJs89xKnhyZ30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656359212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BRFBAs92jFdb4kgJCyoaEr2i0q/I79WGcJPQj6kYL58=;
	b=T+4bzyTZhbQJ0WRnS5FO0ytv5GLlkYZPzjO7ETJBC1dxv6O22QdffOTTadWaZz/4
	znN4XZ+50tUMlUm+4VICM686HW0806tuS0Kv9i9pu75cdIvEj8wFt3Pb31o3B8Y4XvL
	V4U11AN+L43wy6u/jqw8XvUwaoykD7Lz283mbicc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a6b3d4ef-5d62ade4-8566-4bec-9b73-ecfc3676e71d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36074a8fec2a01d895a6e8cd270ad3e343ee288073ced24d1202e4c195300435
Date: Mon, 27 Jun 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656359212
