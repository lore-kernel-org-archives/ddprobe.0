Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09C915AC
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 01:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657677413;
	h=To:Subject:From:Message-Id:Date;
	bh=IYMDzx8ltegMYkMGnWjp1hp/tGNLdyt6LNWJZUlQogE=;
	b=kBGUZNcAyh8Ggtd7leoYsFZcfsFClLap9oCwDTVIZwGpzE/LbmJTeV6vTp0jrd5o
	JrXPdVcvU6u8HAUgx4CLg1lZHJJ7HEYo8bJ4mgm6o+kVickzpzEobjSN6AYkFR6hdb+
	jrfbgW2wEgp13zcAq4wKwvz4XXKuBsVjLq4YULwc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657677413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IYMDzx8ltegMYkMGnWjp1hp/tGNLdyt6LNWJZUlQogE=;
	b=A7oQAR+ENGX+Z+t4ksthKVvHUQWegrFFwWkqFk9LFvfBWi6LsQZ3uMtq8+bHkAjc
	uRZFzqFAxXdif370LGgSiIOZfGVfdHh0h4M3GvwPEYkHu0nBNTIjlG41YP8mzK3NMLp
	SgVBD1qOTCG8ixKWYCNJOn3B/tjxeEOeDVM4Ccro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f545f823-0db00f12-1798-404a-8322-2e3eee544b21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb978cf9f154f0657890ac407a7d458d2841d08ad5da39637697fda62cf107cd
Date: Wed, 13 Jul 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657677412
