Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77CF82F26
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660639852;
	h=To:Subject:From:Message-Id:Date;
	bh=4LU/7on63YasNaTQa8H5g8dR+t8CPn2qx7zGSyACeoo=;
	b=PFQJ0VH5Tzkc+ZT71wRI7JMYuU5CbxKxrxVH5yfZTNLMaH9Rx/IfPrVrWIkTgKrE
	hjoKDGZgWqPDjIG0w2SU1egQ/QPuG5hu82JjBXb2mS6dsfl091ziDrF0KF7ZsPr3v2j
	5I05zVFmRsPmER31WWQbAvNVcHRbp7iQavE2zwwY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660639852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4LU/7on63YasNaTQa8H5g8dR+t8CPn2qx7zGSyACeoo=;
	b=V36G6bcV5z7WwHmLsCttIlP6RdT8UZeduFI9LXlubsxPsQefXAfgKrZjfi3gBFbx
	RMvuO++NOb2Cq5Iwc3oDVmoWeRLgu8HNhrSi5+tWJ2VMQ4CjKKC7aOZ9yZB9bAq3vsJ
	oKJ2bK9n96R5XX26+fMYHXYSD+Kj7PqqJL8+kYeE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a5d938ef-668cc469-d248-4806-9ede-aa731d075507-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3584347170f065678583bd66f1db1bc583510f9027dd2313efac342554fdbdca
Date: Tue, 16 Aug 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660639852
