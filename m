Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBA8184B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655143439;
	h=To:Subject:From:Message-Id:Date;
	bh=97JIZvJIoVEsdXa9fR6eVXdm8wiuZHiabfNfSMEZPDY=;
	b=cUTS8j7p3mNpSHGeMYiX22isKylJXhKe4frZmXw6z9s6XOenTE+vXemSFqX8PjuK
	M6LM5cwRpIXvnTxYTjfu0Rt8D3xtEDGw76HQ3qxlp7+d+ATDRJKYgeoQyb0jOlaQx+A
	O7jKQiIKWRV3BZXXYN87Z21iys78L//oNisC1vos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655143439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=97JIZvJIoVEsdXa9fR6eVXdm8wiuZHiabfNfSMEZPDY=;
	b=DAJLL4JRwoIhI6YVxBtOHbRF85WYfD8HXfZci3/cf2iD77+dr8+EQksxdUXLqTgq
	PHONAxytS2vGZ5pX8x3yUu94PciWfch93JgU7Jss51TkOJ7JRWxj/F9ieWj1HlCZplG
	qRthnffeo793AJh8gud3l/mjk40IXs+4VGBRPgQQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815e3c9be0-2e10bb7e-269c-4710-9725-9107748d600d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6516542d8d15005d718e4c95c57ab6d26ac5e131e6c1c5dca700ba2e551acb5a
Date: Mon, 13 Jun 2022 18:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655143439
