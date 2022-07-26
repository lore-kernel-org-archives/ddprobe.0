Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F90801
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658875252;
	h=To:Subject:From:Message-Id:Date;
	bh=qLyiUcgTFZAA1MK/JvITnOO9AdyA7IY+VhVV0fUXg88=;
	b=bP0Pt/NvcoIr/WI0nLB2uMkaEb0Wdfca3u8HWySu8ivegRgllxf0+kNm84r25v8/
	LG3m+J2CFVTk2YRafNQLfHH6kluGBmC4+KS+YncYEhirDZwdgcdKVBacKnw+gDm2Ppa
	q4OTQxbFmsVKzoU4rrFNRm9TxRmzWy+7e9rsjvQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658875252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qLyiUcgTFZAA1MK/JvITnOO9AdyA7IY+VhVV0fUXg88=;
	b=gPLzV5eGYRsv6v17FgOCuCqYRcnXasVkMT7lIiU9RoCgkezQrMBwaP79x1+hnHHx
	eQHserY/5qOZejdzUERFW9UUlrD2yQzs5iQQqjwsnzYePo0+N3ZGHydhG31Od66ZGBQ
	hPjfdffkciXFNJq60/i+KwSeCrzw6c5UzXQw7/O0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823cab8f4b-6f16b200-ba66-4d02-ade9-1c4ae837017e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a471019a2b2453fe3cceef21e27ee1f92c6139db07f7954f6d0f09833464f16
Date: Tue, 26 Jul 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658875252
