Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140D815A2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 02:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654569359;
	h=To:Subject:From:Message-Id:Date;
	bh=Wbe4e2vj6Pi1AFUydrgNvgn5tCG4NNKwn6BKx6sH9Cs=;
	b=QTSAei6hmLR7Sl3Wb3q2H4/iBeRYMJo9lcXUGhLAg5idyljPCOo+21+BnnJmnTtq
	oR8D/0qX39Xl5I+2td0Gue/Hc0BKJDIJ9VS/rTkdtEOCLqamAYn136T6vlCoJokmxEN
	Zy8EdxtjGHUaukGa8F3lMcHqjp5z513XPQAVH4r8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654569359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wbe4e2vj6Pi1AFUydrgNvgn5tCG4NNKwn6BKx6sH9Cs=;
	b=CKilrJz58nmo6XYHJ+B1GbgfDnG4xeXE5d4ItK46OH2rFbZk1Lwgd2MhhX2S3uUu
	oZXvjbjH9aSLVe5nt+mR8oi+wjPw+CJFk2ld6vRlnXly9CzCyFlroQ02lMCh5769m0x
	jdLO1I6nMl+Jw8T4Z5ZzPSV0XGeT1BNH9roR/u+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813c04d7d0-b228dfa2-e38d-46e7-bbce-38984f421b43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 834d302545d1d9867e168f3232cd2936f6b4bfa60196ccce819457d05505286f
Date: Tue, 7 Jun 2022 02:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654569359
