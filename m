Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182C27A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 05:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656307612;
	h=To:Subject:From:Message-Id:Date;
	bh=z66DvrJkh8OEgnslF2Mn27IKkOnFQi+pqqZmSlN3oGg=;
	b=I/OzwNo7nc4iwYjjE74QxRlcv/c3tgRWtq8g7cqAVyDOAHIOIKYzjfuUxwVkbmMf
	6Bse8gI8/Q8Ovb1V/RwiB3p5sasI6TABpNP+ShqPFIMhN9q1D19gu453y1w9aUZ/WZm
	VdaHmacFfP8AdUt7j9jGqgtoBz/Z6nQDqCdAHhAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656307612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z66DvrJkh8OEgnslF2Mn27IKkOnFQi+pqqZmSlN3oGg=;
	b=aIyteQrt5y9S4Vt80LBL73aUYEgCEj5ubF088LmA6PY3sOFdiSThH2htONJwDxz+
	wVkxtrPSbdnkPJ3/1yBiIjqQNtI15NtykgmGylxa1vnUY75B4mQesw4QLMKfUiMS15V
	jEPlQ85Lo1gMv4pghA995hFfy89cxN53ay2wa9G4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3a07a63-26554df6-30f5-474c-a0c2-88ed0d1f2163-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a419342f05482768d31a90c5219ae50b4fa9eab7b35a948de3f0c181d78c65e4
Date: Mon, 27 Jun 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656307612
