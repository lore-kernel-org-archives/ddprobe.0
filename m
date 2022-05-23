Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001D4369
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 08:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653293759;
	h=To:Subject:From:Message-Id:Date;
	bh=OZ1z3kY8Bywn26eQKhE6NqTxfl6nAyOeIdRGL37R/KE=;
	b=Kv/NkY70a2DRS7YVItLP0kREOmfHpOybNzv3J15cMa4amTeBvFCDefyEq4elhq9Q
	/1cIn1twRZOHd5U2KKyQLlmNk6W7AbmCUKUSDUN9tsFIV7XXvk2kOmxt50Noq4DyKd5
	QNI7vGgbqx3OMEC7ceZ7kr0PR+yYap3rQE9x+flQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653293759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OZ1z3kY8Bywn26eQKhE6NqTxfl6nAyOeIdRGL37R/KE=;
	b=k1HMHIz0FY1PhhAqhD4xfURCBsAvC4DKEO686+kOsn6Nxq0HPkqNAyqWDPiNfIeE
	bA62ZqlpvcQxZX47fb+AA6zn2xQFT8U8b8aUZKoKHItVOgfbtfgp+d86tYgudMGHVA/
	rCRjf9v2D0Lu/91Mzt59UOVNos72E+dCIyk4Cs7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180effcbb21-a420c451-aa57-44b5-9bf5-823152da6d9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86778899b395f181865453d0fbfc8e2d2c6f199709bd26379ab663abe9b5ebf3
Date: Mon, 23 May 2022 08:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653293759
