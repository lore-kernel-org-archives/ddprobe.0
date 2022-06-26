Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B05198
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 06:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656226612;
	h=To:Subject:From:Message-Id:Date;
	bh=VZRgyPDm4dzGDMnPpaluuglRI9brGFkjcWTg1iYV9Hc=;
	b=c7dyzB/QbIIIlDlynFauwMlCpOIB0F+XYAuIxvt7BPtTW8tfKQ47OEybP9SaTh2K
	9C0C2Oum9LsE1uEAW7GzaeOIuMzwRzAdCSyIikefn+UsU+rwPKGsCtBbt9HXusT9x5u
	ab/kqG55OREpp9p0oY2EQ/ctv7Q9cjwWWrqNyA1g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656226612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VZRgyPDm4dzGDMnPpaluuglRI9brGFkjcWTg1iYV9Hc=;
	b=GBjqkjWRT0Y2P8gwiVF9HuBXoI9sFfstDobA5FJCpr3HPw6RXkLEz6J7elAosxov
	KROYkuk+JgnIADUOvWUlGhhaQtSt0HAwIhKacBn1p3IKNaYLYpbUinpSHWvpa+PVdME
	i0gch0J1MGJMXaI+OnH2LKrft6g3eE/bXqGo/kbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819ecc841d-bbb5692a-cef6-425e-a0f2-205bde73df75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a4cb414c42fbdfe3dd22e5a80441aace56b1f29b887cf95dd2ea34bbd823c90
Date: Sun, 26 Jun 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656226612
