Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1703A373
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 06:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658817412;
	h=To:Subject:From:Message-Id:Date;
	bh=R6183sWQuhnQhVZ1pDzjbVfiEWThWqAbUB9ql5VcArs=;
	b=J+OwFYBp8EF/MOsW8L5fRPT+01pBsp3oasLlEm6UDOyIX7+zPeXogMCwUKvN2qiN
	sb0U7glfiOQWCeoVhhucnix2n4bigOUdw5kwO7csfHpCe8IOvaTh+Xmk/PtTkp16xyg
	oigttNhOe1zk+XR3qsM8lV2/H0RuZWC++fAFaKx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658817412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R6183sWQuhnQhVZ1pDzjbVfiEWThWqAbUB9ql5VcArs=;
	b=UyRNV9g8/5K5NWQvD0ol9bxwC66vU02lP6WAXWpuRQ/sR3fE6FVaI6zt1EFXDRKa
	4WAKi9+CjpLdPBfG3bOkBZMKT/qAUkk1vltUfbmqIVwF/tZaANKqnxtWOycXySWU9l9
	mgsnH266QMfOtzT+BxbUPhIROLedBqnYsgIepcQ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823938fd15-8fb9ff7e-3453-40ff-abde-00feff97f469-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8d41b2e6c1f2c6d74f8869339a12bf0af373726fe00470cbd82148c3739c191
Date: Tue, 26 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658817412
