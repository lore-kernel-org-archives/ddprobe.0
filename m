Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548332572
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 07:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647762384;
	h=To:Subject:From:Message-Id:Date;
	bh=m3aQNhN7yIXS3gaPZ73nlxmTNmrTe9qu0uyhecqRBGM=;
	b=cO2NPkBIe/VVeisHBc0WK+KVzmXnGJYSYBatyJT8W/sKuoKjZ4uyI+3X+3a823c1
	X+7BShqqJcts4/UX3DX7SUV8WhZ1P//OYeiWvtsXtuRrrcP99EI9Ob5XrmDwHyL5W4Q
	mAJjZJdB1Eb+plrm5oNPOguIWATMmRmTBxGjtyBg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647762384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m3aQNhN7yIXS3gaPZ73nlxmTNmrTe9qu0uyhecqRBGM=;
	b=ELY5tkvH89s/Qq5Vt6+tvd/oXjrtUKo9BQPYY3jDOTl476GdfLZ9FGeYGt7EuRSK
	7oeL8HQZYCs1btJX6rKQRVQx2MM59aAnP4a9BRChKcBQtUA3fK/mRNJ8QWmWerKqscc
	F3QMtKFBB3jzqg3qpvTrRls2Dpzh8lrPPMRozlBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa64aa762-b5455e9d-d824-4845-99db-f5a4b54e99fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9514668a2abd232299a0155666249b68a855a8b7b33e37e15050a680dbe2a4f9
Date: Sun, 20 Mar 2022 07:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647762384
