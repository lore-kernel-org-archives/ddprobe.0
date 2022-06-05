Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614A54686
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 01:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654392599;
	h=To:Subject:From:Message-Id:Date;
	bh=Ut8dJjBFam2y58WQ7kjNnfOluEeSzzvmTnMmEUdSWSY=;
	b=G6sUt0VRTDaMLuvdv1cvIx0bUS2/FZw3y4OfQ1u48xMsYMlNNJ48HofR0tEGleMe
	ZsM8MuCq90CL+H+YVCoAMSH8tX8JEjn0fzbZqlSg7kr+8xWNqsUgd/gjT78u17W1vMj
	wX3aecCwXUHNtUMNXtSOGrbY0fnNyWooUo4q46FU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654392599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ut8dJjBFam2y58WQ7kjNnfOluEeSzzvmTnMmEUdSWSY=;
	b=WukhvM5u5nO9qh/4sF7xwV5W89DoTd3vhxyIV2jtOb4PBexOLEQ1o137ndtU7aKw
	rdsp57g+Pk97sLfuUl+RY27u4O+ryiaMJdoQ2kpPtrM/kPlOfWKv8hBClfoxg9U2E7d
	IeDWhk++3P35KWQJzUNvb1R6ZCyPd3Ke1D1EQx6s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181317bb324-954a3748-15fd-4c46-8349-ea7e5bcf6a55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4be28d06e6fd8ae7641c472fb80db9f4879704f0d102e7c974b8b447f1f2a4a
Date: Sun, 5 Jun 2022 01:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654392599
