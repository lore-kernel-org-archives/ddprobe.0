Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EE47E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 23:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648252498;
	h=To:Subject:From:Message-Id:Date;
	bh=s/fOhLs7x5FG8ljal1Gli/CIeQXGQj5fd5iUyucbHgU=;
	b=aaMO5c4cN/6F3aUNwah3Ew1wGCqz4lfV/8YCNc+FevFz9tqFq2Sn0MBSs6CW8yfd
	CQnI8ACT5uAaiDOkU/8TNxrsijueeNTA68QN1l0lCDK4QMWtFjwnr/lT14GtmbwttlA
	8ZgJGEEGNrx/xT2CYG/GExyXaLw4YQFifeHAC120=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648252498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s/fOhLs7x5FG8ljal1Gli/CIeQXGQj5fd5iUyucbHgU=;
	b=X7NgZknOHjtuc+1hb8REWF1BObFFCXV98lVOLwzZr6yL+WlDKvvpeaW2Ku6t7lV2
	unomXbzwg01Bwn4MnGMFSyf2d3rXGYg/kaLfY7ZT+judr0Z9VGfTB0PJkz7RomzqKBA
	g6GiYRagPSBpRTv6LMZit91cRiW+KsZ7zDd79Mek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc381316e-9bd824c4-d892-4e05-af2c-87e2ec9a4ae9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 969d65375769522c13a2703fdf40e25debaa36d2a33de558efead9641854c918
Date: Fri, 25 Mar 2022 23:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648252498
