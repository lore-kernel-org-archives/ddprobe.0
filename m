Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19883362
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 00:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654820579;
	h=To:Subject:From:Message-Id:Date;
	bh=0U+xFkLcOrFU1oX3/8wxLGhd2l8OvRk8B7SD/q6/hEs=;
	b=OP3Q9zAIDkRd2U8b7TWHm439QpMgqyUBhoDE9PshoALzeaiKazt31wWU2kgcK9Rr
	oPKvNIvkEEWPQWGn7ORQ3g0fNliUHcuGG0/yqKQ6sLbeAHkuUhPLem3+8HxTTLC6X1T
	e4F1r6jseEHQw0cVw+rI1fl8QkFURnkgQcJc6efk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654820579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0U+xFkLcOrFU1oX3/8wxLGhd2l8OvRk8B7SD/q6/hEs=;
	b=QL3cK3W99Bj4yirEnFP9N5MQRtYGQA3TmQYzkDJjBZNgCTmfiJTm9QGKccfK8Atb
	bOcRfCm+O5HngoUs9jz2VRcUcJuFVk31snDgJa+wD2F/sr0tNflqcDc6+wD7apmgAq3
	IQS1QW7mmWJOqiaZynJ6ZCxNmablZPEiRjkrliNs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814afe27e9-4ad35821-970b-46fa-834e-654b1f754fd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf97563cfb518b5648dc8b314d7249c4f20c9e798ed31825edf57614026e618b
Date: Fri, 10 Jun 2022 00:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654820579
