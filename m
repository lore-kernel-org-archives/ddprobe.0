Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A6353B8
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660861252;
	h=To:Subject:From:Message-Id:Date;
	bh=IVdzpZF3ZRnVyGO1Jn9OmgY8HD3k9HVrXJBNAi4KqVs=;
	b=F2L9CNNlQYjo6lNBcPm3rDkKv3wEprKpreYxbYjrgIsu+/lW6W2VtLv3uDHB6ewr
	P3U5VL4aJBkSVKH/wa5J46TfjHUJGVKLVvYo+jH8VtJaG9h7inidDglR4bsf1JJe2Z5
	/UhC7q5jb1e+KPbOGnll6QbQ6iMP0rGGqWUlBczk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660861252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IVdzpZF3ZRnVyGO1Jn9OmgY8HD3k9HVrXJBNAi4KqVs=;
	b=BkMGOtRMhHdVToK5g57mMzVFwWU1NoDysmp6PTmKGfdFqCFTgxAglNJ2Uzij1UtL
	kF6hCFhUPxIiHcvyjNXICA3We/+6lyH/tJMGzNanH7HoY2ZhOVJqQrJwPDV/sYfaTCI
	+NKQ1VlRaCtI9oMKTa4A+NL/5UA+P4unqTzmjO9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b30b83d1-6cbb5ee0-0428-4bcd-9223-57b7b3aa5b4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9f92d2ea65713706c1dcaae5b134b6e27abad6685532d3ec0dd656a7425f524
Date: Thu, 18 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660861252
