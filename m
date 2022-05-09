Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE387B
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 10:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652091658;
	h=To:Subject:From:Message-Id:Date;
	bh=W3blj/Bi/OjcOnkKQV4GX5S2YeNZ4rKSZhAXLNvxNpg=;
	b=FtnD9LazpcX7XXRG9gGJp4j2RWbQb185GTyt8pX7msvYKi04eZgVVyMxoJYYTVGo
	BEvvpZoPN3UzZSmRb6MGJ5EoOmQjtYAFXAPZzfD/pXYTZs+W0M9rFp8QQh/zES70dXc
	q314Swoze0PQ64TTUksOspG9dauKt2Kh2/VyeTus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652091658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W3blj/Bi/OjcOnkKQV4GX5S2YeNZ4rKSZhAXLNvxNpg=;
	b=gbQqoj0BASxlWOHd1NC+SUk7h5Vlvg3CnomR7rWKa4O/l860tEHfkAg+ez/MdTNW
	GGemMkHlKGClll8kmwCBPSyJNDC6AxWBGZQ7Q6xO6ba33EvU//tQag5/Erql76fwFLA
	Le6dZoFDXkYDSHqNstz6wvX9X9/8VF6FfWapOrcI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a856200d-afc5c249-3cbb-4174-93ee-222b620f8a92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef4cdc510afd778fa1b797511538a665f3ad3b56512081130eeddd95b4ea4be1
Date: Mon, 9 May 2022 10:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652091658
