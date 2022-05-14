Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA8F7A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 13:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652535719;
	h=To:Subject:From:Message-Id:Date;
	bh=v6bf931oEo4N+B6imUCmjXVgHlLjcEgMNBE7VZLfkts=;
	b=QIsFGJCIotEcKT1ySPLSXURSp3GyBsJoLXxHjNW4vPherW8hivIdHyvcjp64Iz7n
	wqDJrSOjttK/7ESnRleIKm54bkMMpqZz3Va6TnUGcTh6Rwr+iWTKCF9b3x1aSDaLj1S
	xItsPPpKSYEnDPv92pzXGiB/Wsu3n2NN/+Unolns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652535719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v6bf931oEo4N+B6imUCmjXVgHlLjcEgMNBE7VZLfkts=;
	b=L6vKcb5B4ccnn7HBniKqtB9Or/b2NKT6RJ+Rb4gM69Y1dt6KmKgQK41uQnYQ6rUH
	GJqeTbLDEEWcfZbzUbojEH7ogCDgrIzzSvC2ZPes4ZMYcu0XEUuI7vp8VOwmSvFF/Ta
	GS+cVVr60yzbLpUyT1BfHIzDVSpV7TSRm4pNtG88=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c2cdf562-5e64dbf1-8362-4ddc-9978-c481e4cfbba8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2237f1668df3c999c3d9f6bfb6764de54f6558942821212debc38cb75262e74f
Date: Sat, 14 May 2022 13:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652535719
