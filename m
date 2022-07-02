Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D361363
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 02:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656729412;
	h=To:Subject:From:Message-Id:Date;
	bh=Zn3rpnZaidxvJTNF/lDqUBiU3O3IGyEfjjv0bp5Necc=;
	b=bJLxMI5rasXPrglVTBsXAKDYxpraDuoW/aOaOD2pFTIE5YLua2OwqTBHrHOOr8TG
	/t/Wfmjye5eF0O+SnpPrHCgFpEJOaW1IDdQ0epPnOUjKCvXpWYG8nGDHmYJ0RO/I2Rw
	LQxqTGN/qbGZNToprY0gJNQVEoyy7jdhA2p3ImKA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656729412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zn3rpnZaidxvJTNF/lDqUBiU3O3IGyEfjjv0bp5Necc=;
	b=PJsI+CrOw/Fhci3Oh8I2fYQMhP4t8kMftKW5FYT43aHzekeDxl5iQhqrYDN5WasL
	epHS/AFy9IQuiL+1icmjJa+aBLFdUPwlKIhk+1QvMFjrmCTPizOOb0pCdSg9fyyJqgg
	bgMupAmEDVHG/mWasl893+QUtu2FWLf4GhpQzvpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bcc4a2e8-d7bed666-7ece-4dfb-8344-95953b27cfbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfa5e698dd6f671af85874e72b2dbc805ee37c1bb9903b14a9e2397846729d1e
Date: Sat, 2 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656729412
