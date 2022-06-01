Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269F236D
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 04:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654057559;
	h=To:Subject:From:Message-Id:Date;
	bh=gE8JFRP5bufAqhsrM0qeauMQgAhkbimBtitM56Aw8xM=;
	b=cFETPfzxEwBqGehaTsWrdLo/MUvWlj6sQyH7m/6XAdD8s2VgfNKDvlLqB/LxwG8I
	Mi2jp5y8rasrOYCZZg4UpNQa9CAXMhfGC2IDzsw2deF9xiZnTGoOlEWZpyW04aNSvU3
	nUppcwZzzzcLkGaAbHtdf3IWD9kNBrXbNZHmIEIs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654057559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gE8JFRP5bufAqhsrM0qeauMQgAhkbimBtitM56Aw8xM=;
	b=dQnta37510C5I4hggQjfg4g9rxN6Xj7of01ISwois5FwW2Adlg24XeSobwzjJVpW
	+ketIPxxrRb/W5n6HmeZeoVrBv0edMGHrc4688GJncqIezd/nd1YsPAEFrMgx15aOmQ
	t0YYj/Bh0QKtV8DF3HvtJbgPF4otO1SpcaJ3yKuk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811d83654f-34e5ed7f-4089-4cfb-b979-acc89aafc751-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b70c746f03a270d086f360290f34054459022d16a046927da943cb9a0e56ff13
Date: Wed, 1 Jun 2022 04:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654057559
