Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF317F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659498652;
	h=To:Subject:From:Message-Id:Date;
	bh=nWfH3JuSLnciegZYYobzFYwrwrvxtdPDIKYylV55eos=;
	b=dTmv5C4B+9d3Q1hjq8rUGQ+GTcgCK5+cVUPoHbRsYOM6+ccgCouTL378azmVYgcZ
	RjvRLBFzTSnmwl1Dghlw3GOyGxyBNYhHicPFdcPFoco0X4eEzwPw2BOb9+KrKoDwfED
	UpUPrBlznLxJXjDX/UcCr/LRN4F6p+6hRYCu6uB0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659498652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nWfH3JuSLnciegZYYobzFYwrwrvxtdPDIKYylV55eos=;
	b=Lh52tpoa+oExzvFHsL9gWc39fbJLzSJDTjUSeF34rjpZyiZmkoku+7k66Gk09xUu
	Iftz4f65l1s95uQ72bk9vqRM3wcBGtEvTG3rXPU1EbaaIWFfSnaNQ00YjmIAJx6yP4w
	uT8TowmU4Y7SREsWCERxmi7xcWhxfpFc3RLXplTw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018261d3e3a8-7b0a555a-e8f6-45cd-a672-12d2faaaf246-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24ec5e4bd28b1e21fac967ade3c6eb4ee58be71cd5bfad7c0f7e3be96627b876
Date: Wed, 3 Aug 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659498652
