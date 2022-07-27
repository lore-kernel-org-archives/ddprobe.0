Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73ACB7FD
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658918452;
	h=To:Subject:From:Message-Id:Date;
	bh=kuB5Mx/uLc8VzsHOUQWrb1fxwJOnjdbTgmQZGcmX9wI=;
	b=kW8rPKmMjbnpKMYVqhX5XIbPjLXFCupORRThFoB8fWAKvbWrMvfpIZgSTuRoOqin
	Yy9xc5pcqaAtzPcBdb0dQ8kA6n+izdSlwnM3CVOvYIzKrch03kMIgySipjiYqZQ6SbD
	9Jtk2zN9WIwblB3WL5OemK3YA9/LmEPVpraioXpY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658918452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kuB5Mx/uLc8VzsHOUQWrb1fxwJOnjdbTgmQZGcmX9wI=;
	b=I3HvOZAYvS8tIo70018TCHMXLL2d8sgYkEDVWoPJX16Ti51zAHVQGfewZ1BK9+Kq
	uTXtpY2OW9LbvFH4KCyOpPt3u1Fb/Y2ZgiBLVKvRWgYeoN57tdcCxJiuSUTZLRUg6of
	Q+/Sru9mTWeHCpWr0Rxc9Fx5RgRex41IqS25fADM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823f3ebd31-0471d3ce-c169-4a4a-8f2e-92a8f26bc369-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aced56c5e2578041245b513098dd68c892806d65b6903194a4f19a703ef81314
Date: Wed, 27 Jul 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658918452
