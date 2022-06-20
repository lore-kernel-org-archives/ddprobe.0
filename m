Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 016FD7B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 00:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655686079;
	h=To:Subject:From:Message-Id:Date;
	bh=+hfZXkY8tFMHI2A43v4Sf/7GY5/AVSJMajhBuAEyK+A=;
	b=WZgN11votVUkwLdQXZCWBXZaZ/Jm7TfJeybYqOs7ch8yGOJV+gEbtYxdoExZJ6ps
	heF3/FGiCqb5pLaZm1W/9sH9R95dtIY9L2ZahBsq+XipjUzYXDmF4KoV7vDEs2EDFaC
	SskvU9woxJXt0mZAH6EwAZpGwNmur1zS7hEcdEH4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655686079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+hfZXkY8tFMHI2A43v4Sf/7GY5/AVSJMajhBuAEyK+A=;
	b=cOFpbM6vYa1DCSZ4r7QnwNb5ZsWvMupn+wZmJ+8AVqi5l6kDoqzPpoCZHkgui/0S
	OYm5ywLDJ/nBSgXEGEDPMM2I4oQSjo9q9Rx/bMPGZZCY3IrOC31ZJL8pchrrCp06Gsh
	Q2VKShQkeGXj+PoVogHBGwZwGRGxYYfWTGl+Zgxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817e94a30d-37938b3c-be55-478a-ba77-4f0e57f7f654-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09c6e945917689632646f33d9ddd3ce9c65a971ddec90c5fc901dd845caa051a
Date: Mon, 20 Jun 2022 00:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655686079
