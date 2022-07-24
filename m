Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376AF33C3
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 16:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658680012;
	h=To:Subject:From:Message-Id:Date;
	bh=TXsxmFxwMxNazYQSuKheWxZJXE2eAzA5KG8JpjotRFQ=;
	b=OKE7wXWAXY0Q91zj93INxaXpMpIQX50+VHzGVKSYtD6MjGbcrk7arfhQKt4cFO8t
	lS4cHBFE2cIdmYFDkjYe/uaGEf6Y0D8mNvaevRKGKBcsUHFR5O0YjSIOGu6B9yWllxT
	DmLIyX+jbCVX96zJP49vnoyMIprk2AMUKe6Ej1fY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658680012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TXsxmFxwMxNazYQSuKheWxZJXE2eAzA5KG8JpjotRFQ=;
	b=YB5ovVALw1K5TedCWPfbnLhzlg0/BMZNsy/snBHsRhCB0x4DnZ/DIPzEEfMeyVil
	LMuc9CqZWMFfs6TsU1R+AGso4JKBhsjgxmxF1Xq0b5vPQenkJFDH6YEuPWuzGVjdhzb
	oBGwLx041MRf5eA5mfKw8EKp1tOi1RB8+wAQr1z0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018231086e31-aab87387-fd53-4fdb-9b82-ec7adca73f0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20f9967e600cc9b32916367984f86d05f383b468a4f6c7a591590b9e1ef0c278
Date: Sun, 24 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658680012
