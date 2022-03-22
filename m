Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5348266A2
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 23:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647992484;
	h=To:Subject:From:Message-Id:Date;
	bh=+Csmn90ZlfgJyU2TmfMCTNWSXoe6CCGwRF9XhZ/xMqs=;
	b=AGW8V9zm5MaHJy/acLJ2UkA+bnoAUvoUtpohsS/3Jkt8hE+syRKW+BjGA7vn24uq
	fvA714Fp4lQrujDN1usYdjvWcZhESRv+E2KNOWoUAgxgzYvN/v71hgMBgF6huI+euRS
	JESNCzz3B9nlyl4stvtB5dtzCDW7Txmmjbgmd3hg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647992484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Csmn90ZlfgJyU2TmfMCTNWSXoe6CCGwRF9XhZ/xMqs=;
	b=LwbOILVcXD6h3uMYYcoD7shXISy5B3K16DiQDpdg+ecJkWKR0j4bRmD8OGSqw9WY
	WOzgad4rNK85mUBCuyfZhljOXf6ynD2jGYAs1VT22/VhCsY5Qb1KwYzof+0XoVpfnPC
	3cJaH5tXosJg8dGkQp+e/OebLsyVWEA5UxCBX8dA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb401b3ac-2203c7c5-1520-4685-8c7c-3368a1d3e717-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0c40e54f85cfbfefc8db567971b263bd01589e7238e9cb1441b4dce7704cbd1
Date: Tue, 22 Mar 2022 23:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647992484
