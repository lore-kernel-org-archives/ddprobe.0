Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B03EC7
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658920252;
	h=To:Subject:From:Message-Id:Date;
	bh=n83hQfGX31T7wXloRKmbF8Qps4b6TJW6rzYJov999s8=;
	b=TqAUHCt9d8Wn0JorjXV5c7WelX5lLj+2jo6dwDcWpxE549SeM2ClNcjSWCaDwe5k
	WpYs3GuBkvhJdQ+kk0zP3+K8pmuvSPxGEmrd+cOxpMXcgDKWnOTZaCcV242nyrLCmWP
	A8zQ7kSp1wDTvJEeD3yNqDEr1CUHkuihN4zYqlrM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658920252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n83hQfGX31T7wXloRKmbF8Qps4b6TJW6rzYJov999s8=;
	b=CSB2JZsk6RMsd7YlXGW389JZCN+5lg2C9NK8rDvkajrDIZjjEyvUkyPiXtU8Ss3X
	gdNa4tDAR47NNBqpfqUjGTkuRb0tBNoE5/O5ygFlv0rv8FG6kpgtSB9y3Xmq9DxCFqX
	uSaPYzrxoXUSwDeoKXO9UDjdpvIs78p1HL+JZhBg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823f5a345c-46bc0770-c56a-48c8-83bc-f0c0464b0812-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b55dd6c5d0ef26adaa96713a018fbe6a2f3e9755130b1d0becaef8134e95a17
Date: Wed, 27 Jul 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658920252
