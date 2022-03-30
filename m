Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104797C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 02:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648607459;
	h=To:Subject:From:Message-Id:Date;
	bh=yrdaNKvz7yGbyCZkv6eYahgT6uPaoNHdmOcCtUUkhoI=;
	b=Bw5dTynAs5dLgVmI7i1pDKATRHjrtI+C/xFcRb7BVrY+8ohGKoddwjxH4AsvCEZy
	jCWApMJdL+FtKDUlIxPPmh70k6Mr2YJOnFBu6Jjm5kACg3Zjo+VGj8BGzv1gdTVfDME
	Uw7lp6Cw6+eWK321r5CBl6gcPcRarBa4WTwfskmA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648607459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yrdaNKvz7yGbyCZkv6eYahgT6uPaoNHdmOcCtUUkhoI=;
	b=JuewVmgmyeFB7UALsW2bANBjCLl+EozZ5gxreF6xo0gtc6F7DNyhxuzVwaJOiXe0
	RL1fY2050l5z07XkO/QYjU2K+ruAOvdrn50wy3lrLZFNfIoVhC6AXFFoH4EXs2YOW0a
	esujXnFov4xiiGY/dNgxEQ0f0ZDV/MMqObNM+/uw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd8a97432-e78235a4-e721-4c02-b3b3-9dedebe204db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a7da6e2b789d2bfe0483599a4b5bc4aae01075845e0bcbaef544b74d264a1d0
Date: Wed, 30 Mar 2022 02:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648607458
