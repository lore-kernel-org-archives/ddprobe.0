Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025BD7E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 12:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652012338;
	h=To:Subject:From:Message-Id:Date;
	bh=Yg2piCyDwPE3p6KW+BKQDrQB/xua2HN1og+zhpDdbyM=;
	b=l2/LRzj398KKKLZpcQ18aM5ye9Ty5PFHNmobiK8RyABNLGhIBtY4d71wHmRnKM20
	yr5XiyFT43H2xlzpldth3Gke/KP4bJqt2LT5zxtNbZjMaXQpRTHiDBFANCAjr2YLyWW
	CtFkJTvpBOfpDmZiaLpU+GHepK+x88dCGXrAV7uk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652012338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yg2piCyDwPE3p6KW+BKQDrQB/xua2HN1og+zhpDdbyM=;
	b=h6ew9NlQdjRGeuU1kUT7/OnlUXp1gKCfmMQg8xz6K8PMI4yOwLR/nvDFqr3/ORty
	RFvBqSaXrLtUFNLuqBAnqcgwj8ry9/CNquGDGrudNVjKMkmCkAhJ5yRSMMU83Wb369q
	fyTFnoxZ52gzBDSyw0UgYCugnLAuYemOcBctP2eU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a39bcc59-d2a5af30-ca09-4d31-a437-47d772cc0fdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5fa80ccc65d7e2b6503050465f0ebfed36bb55937de18ad52054deb43439731
Date: Sun, 8 May 2022 12:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652012338
