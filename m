Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79926C6A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645622185;
	h=To:Subject:From:Message-Id:Date;
	bh=LQDyc5k3CFZf3Ls8eTBKDeNq2MSvChMg/qKSC/irbb8=;
	b=PZPOScqKVTJCMuI+0kMCA1211M7c7D1Anu/wKCxL0wKE9CirGrMJnPDvIve7jl3X
	pNTIHEB9PjU2dRT0DInJW6b3MqR8aLSKMcQZ2jUvDQXMCePXNdeavqAKwnmVu4dWkYA
	XAyD0nXnKWyaogm3J0nicFbbHsOhQR5l2eymJVF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645622185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LQDyc5k3CFZf3Ls8eTBKDeNq2MSvChMg/qKSC/irbb8=;
	b=cxBuThimzKCRpk37zKsHoyJTZWc7n8LbvCXCd2SDeRhUT4BB4P+obFsRWloLR/j5
	FGb+osLRNrDmKh36R5XmLzbwTz14rVWKxJG3/HX5/93S4xmEm44CDY3PDq9eYSGdUFG
	MG/OsQLGii7dywg1z1Lc6g7Xlioq/kg6/0XObsP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f26b9cb82-afa2e839-ff8a-459a-b9ac-537a9b3573ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7c4f9ea917a780924dbb6e98ba121a55667493e46c6997619a8652340b2ecbf
Date: Wed, 23 Feb 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645622184
