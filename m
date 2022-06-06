Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF847E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 14:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654524779;
	h=To:Subject:From:Message-Id:Date;
	bh=0SgIPpWpxmw6Vq2E4kNyXA3Wy28Qv3uQXO1ExjWYA6s=;
	b=gbUgLS7kdfLaBeSBIQeGKvZsvL/CabMmyQMjXJ/E8KjHWrmg/ERbo2E+UATqjm06
	inTvND1FxdegiuagAPCcYJadC45uNx5ibDvGiYRUP/lSjG5mFe3ak5yK9Q4XPtJDVCs
	2e0p4Y2x4bapA8Rft2nHfXuLbGB49rNCyt07LRGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654524779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0SgIPpWpxmw6Vq2E4kNyXA3Wy28Qv3uQXO1ExjWYA6s=;
	b=gAL3HiqL/LreSY6VUo0RZ2z7A9BN3hsOASeCYVbD/24olP6skgpEESgsbswJoqvk
	4ry5XorcTzSUr6ki/EFEqHzkbXY3OpABaC8JqDJscGmCTmTF3mqRALTLpuAHOTNz3sh
	4LbFmY9h5h6tht2yQjhF6XA1qNuBUAXPRNS3J8Z8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181395c9af5-7ec7e6d4-2929-4cd9-95ef-c6e960279c9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9018d0b4ccbe06a9a0e1f19526b81194c3639b84a662ccb039e21ef95e04ba7
Date: Mon, 6 Jun 2022 14:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654524779
