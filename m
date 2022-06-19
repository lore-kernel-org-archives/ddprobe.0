Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6E17B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 07:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655623079;
	h=To:Subject:From:Message-Id:Date;
	bh=B8gUbEwe0/SYpGzSfi2I63hqCvSE7M2SR41Qh5NR/tk=;
	b=R37rt3c6Sl9ZQnWKR2hP5YMvdyd+2n0VIRf0JAAFZGrkpOLXqnIOwo0vubJick8z
	JbuDfWSW/QQP85r2KegRBx/h8kh+CsGuj6OxWDqhgV5oS9jhnja7SFkebWDd/YPplsM
	CH6ImZHrzLmBhcsa8WXysk8gtV/zLxWG/VZ1aVuc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655623079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B8gUbEwe0/SYpGzSfi2I63hqCvSE7M2SR41Qh5NR/tk=;
	b=VRnZ5Gpj2dFGbNMniullJEj8kdRPDlvn19Ets2Pl+ECNwkhXIpEjDjnnhqpHEMBM
	KFJLxIoamZjdAU4nXZl2nIzALg5g2dVku62uTNQZuoqed7g6UgwY19mENa2zBXHjC/Y
	aFiL2mtX0cZAlfuVlo44qKCSwLH5k+OIzRK8hTlo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817ad3555a-e78398f3-d959-44c7-ac2f-3fdd3e0bfbec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 514368700bdecacb66382ca2048687a75921ab5970e1f106f868d171a0141bb2
Date: Sun, 19 Jun 2022 07:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655623079
