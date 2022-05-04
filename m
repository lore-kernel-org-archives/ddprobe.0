Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5F517C9
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 01:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651627798;
	h=To:Subject:From:Message-Id:Date;
	bh=Z6qXC8ZvHJyRLVmo2I+id1p0PwQ9BcIMrgGAdDmprWw=;
	b=SJUL0qdG0UGUgkNGGDmoA1Ii5TMHmbiJYsadC6hPtEIVaDlKuyE20fV01SYhCP4g
	JcGrCDKF/7m/9bZG5CY4BIzjZpnF8k6J2hAZjDVRfUqHZUSNNUb5FfrtDxo8hzp6hyx
	kju00OAMpmMQOpiIQp+0uCuyFdc3lc9QITUCPkUM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651627798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z6qXC8ZvHJyRLVmo2I+id1p0PwQ9BcIMrgGAdDmprWw=;
	b=EwxFNKQNCABteffcxoXkDLKAGYAXvKONDgX943M/uxyGfB4ssnKL5guvW6A/WJZH
	boi3PUQVX9KKd25bZjMXpZLWSy4gGY++LzF3Bj1X+CM7u5nxqfPwfxWreNWej+kZ6T1
	uVZs4OwszIdoG7P+Cbm8YZu4+Bcy0Qzds55ksH3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808cb02f15-b179c24c-4437-44f3-9e12-2bab5dead464-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0de1d1885064a59d8cfaa0dc6e522d5de5b3c89c4e399e50416bf26f3a16d7a5
Date: Wed, 4 May 2022 01:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651627798
