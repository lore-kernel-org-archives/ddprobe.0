Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBB07A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 20:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655323739;
	h=To:Subject:From:Message-Id:Date;
	bh=pX/KCxItGaIit/avhPjDYI6bG4v8omndSM25SaxdNKs=;
	b=BqBq/KfFwRJECiuhT8aPCDPhj0jYIRTwchydelGs8Dn5U8bjIEzT/r8w4HKDZ7Jp
	xwSklE0fmjuuWP6jIpdE5XPBj1OSc8GEsN57r491IvO9Q/R5F5FtGxYKA7Eys/KwyxA
	KYGtnsi26YV3UaFft6Rh15QDcL47hYN/Dj5rFFVY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655323739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pX/KCxItGaIit/avhPjDYI6bG4v8omndSM25SaxdNKs=;
	b=GWZTyKTfyQF/kHIfj2SpVdq9Jh3jdgOD61fvo8qRXNR0OA2EvVCI/SKsGPDdPcQu
	4hLVcq9xgOu7eETqTVmY4OlNe8NEhaw34LQqJx9y/G6FGBJCVTcpB2KdQ5GWVP7x4Nl
	TjqzU1yqGxQW87I7H9GJZHb820lCdQXwuLGLiHzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018168fbc4b2-0e8d1d65-bb9c-485c-9ccf-1829006528ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 923038a89c87ce7f3a97572a1d3ac863b786f6cee7c55a5bd1a74fcd2a1fb17c
Date: Wed, 15 Jun 2022 20:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655323739
