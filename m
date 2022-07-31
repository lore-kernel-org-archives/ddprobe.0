Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3900B15A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659242452;
	h=To:Subject:From:Message-Id:Date;
	bh=U2ik9us5QYTiH28IlvzdWyMSc6CwG+gK3Bqx64FeOI0=;
	b=YACbN5rJ8JnDsLYA8J8891Xr+wbX9wP2BzG4Yf2ZaIG21iAgmc1Y3JTV6a61SZo3
	RR0CaplCJ7xZO2FscBUhcyF/n0bC3OVgfGzmmX3StJwg/9wBHwlyJzyLO3vVdO+p/Ae
	uw9SMSYJjsR+fQzswfVKFZ0vNyKaCWhoxw/lO+Z4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659242452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U2ik9us5QYTiH28IlvzdWyMSc6CwG+gK3Bqx64FeOI0=;
	b=gEYmClWFRI1dy1cukxNo/YVt2kFIqMStM6uRRem94CjMD3G2BBm6CMO68DmD4bHC
	ST7ami7KMreUbkRhSlSOhyKvlIe1MemNIXgUpXvHdc4c4H/koWbqH1ea6jiVVFE8Tvl
	30OUEJNaNN62627Jx3fUPQ5q922xaOEgdhLiZjO0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182528e9642-dddde57e-a94e-4043-b3b6-3b466b1fa9a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 878b629d230003b1ea58c34f0033b53ee34e2829dcfc10a2d2bbcddb3e0c0bd1
Date: Sun, 31 Jul 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659242452
