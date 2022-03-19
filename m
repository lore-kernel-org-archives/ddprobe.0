Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 881337A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 03:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647661884;
	h=To:Subject:From:Message-Id:Date;
	bh=e3wIV45C4yLdJmbBjWD//fteJegq+NsjXhHM4Xdpn9g=;
	b=fmWKOe4kDGT9UCaBW8vrHJwdXP2yaz6cIxT3ipmx4/Fmj9OG7rR3fA+7ZTGOOUDy
	ouwyOg7kzFatpurSK9nSmrhwoN02UX5s8w5hcRAGHPbSp9/Du5gO4QeOlnCa/st20OZ
	Ww00z7LtoqPrbvVSKDQKWONjJK9ATg5oh7D1UnvM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647661884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e3wIV45C4yLdJmbBjWD//fteJegq+NsjXhHM4Xdpn9g=;
	b=HhqlypJtA0IZ9ZkSEgwrej3IFH7wbBSXLFvVrBAZ+RR7Q2csJCLAuB/9tkG3KSHN
	pSo0FXt7FSYPb+BNBE5e15lfprLFlGfCvHqyNIOFbUlT4jMua9ARraQHjOexEqmiuWl
	bu20N49HY16puyA4cY8xaIP5jlcOrGokjyjAbSoM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa04d2531-4366d70f-5428-417f-a4c8-49fc8db696fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d67388158f31e6b554eb2839d925bd2ed94b716fb7486d5253e65d63b33a9313
Date: Sat, 19 Mar 2022 03:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647661884
