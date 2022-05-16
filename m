Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F9E7FF
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 05:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652679479;
	h=To:Subject:From:Message-Id:Date;
	bh=z4JMXKpbFoZdkTPecUNAqJWCMSOdtmcmaW7pmStiubc=;
	b=Lr2Yjx7Nm2JFJJ4dd42zPkYCOWUSztav81XMocj/BLqLo+1/xcIgXPDykG0L63vn
	mw1HA9m/npAwSl9bVm40LiTc184v4SiKa40gY6F5bSZFSLSy9ueIcxxMZY3d5TnRWHO
	OXNSIzu389eVJaBkxiOnLqIeF82KW9fjH8oWiYPg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652679479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z4JMXKpbFoZdkTPecUNAqJWCMSOdtmcmaW7pmStiubc=;
	b=hoCeLgS7mLa0fzjbXkp9DEQvZMIv7U4D63fEuZwbuzrE2BgXWAT0Yi1/wLoaEHKg
	lYqjbMycdQQSfVNxQ12QeBOxnlgoXtFvv3n+/zVqL1pZhMSUzUnPxz4qYXhAek0nKfw
	f8irZdQTgQ/2uIoxPuGGRSsEs/mZZRKmvdDD0yzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cb5f8fe7-0d46b055-708d-4c9a-bf2c-14521c8fbb2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff6bfa7d4293fa3e472d36ac6eaf448de66b83bd4f91822f5ad2d35ca5b3b15e
Date: Mon, 16 May 2022 05:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652679479
