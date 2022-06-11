Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD0A64F
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 03:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654917179;
	h=To:Subject:From:Message-Id:Date;
	bh=H3ofDbEqPf6vtxUb0AyMH/GgdHG3UG8ahCv9Adl9v2k=;
	b=YRzsJrNihUp+V+s+nBUE7yXeDl349638V1UDu/vnU/vHFWvxZ+qpNNB6YYxVfwTk
	y7lHIr0h5D3zIhZ/8fAxWavM4Hz27Bt1hKzAqSHmYV3Gu/lSDoP8/wmoPAkREhzZ2Hd
	4VL7wdIIvYEw4X7vj0hWxCFzbrFMZqR4jdzBX2/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654917179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H3ofDbEqPf6vtxUb0AyMH/GgdHG3UG8ahCv9Adl9v2k=;
	b=Ip85F500K1YJx0pWh6RsuSNNfEkCa7bbLQS7ePwaTw5G6fBvIp1o4MzTbtlNr0C8
	jt710Kk8iPlamIxIxgQxl9QWHgeqNUMVgrK4jruPqG3aL1ZRuFTgVJ/VEXnrfCJH448
	afg6qZo28/PR6xoB+1UDsqVVPs9wZUa07s6JxEAk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018150c02758-0f709d7f-8cfb-40f5-9970-e85bfe5f95c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78b6052f1eeadb2beb84847d05e4a0d578ad20c99977984d0291e128b45ab790
Date: Sat, 11 Jun 2022 03:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654917179
