Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519EF1389
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659834652;
	h=To:Subject:From:Message-Id:Date;
	bh=WKfGgYJ+ACvo9/pVM6lP5KlSTxzRnmOfVwedOyHXiwY=;
	b=cMomOmeFIjFAJfNgsCwgu5F2nJOu2BI6FHgCN+0+YEYZPIph33JGLA99uXC9NfVB
	mVdhsFZM3ZZnAlHwN0hJLUS4Zt8bXEoX190LBFjZ8L1Wk1U1gLoS7d/nmaAjHjd7Ii5
	Y7vRh36aPlz9aG/T7aPi09N294gTqoyEfyBurpvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659834652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WKfGgYJ+ACvo9/pVM6lP5KlSTxzRnmOfVwedOyHXiwY=;
	b=PgPysp6mrRw5Tyx0bXo9AfRWMBE1bTgM+LvLvDuBTkc7WZRya/khR5OR9WBl/FSQ
	ZWxSBvOWVfnTzyV8z8lixG1H11V5Ky88Ees29sQVG3X/8cMPRmMtxuNWyldTalDW9hR
	QtQ3y8X0kuygVVSpKeGSER8nIeVYLJKsz9flFd8A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018275dad81a-c6d6a425-db56-41ee-b2b2-3ebf159eb2e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b70d86a1e13f667a84a6c159818649e478815dac49d41f21dedf1df2ff75d863
Date: Sun, 7 Aug 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659834652
