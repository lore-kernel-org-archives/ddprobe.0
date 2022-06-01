Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B88366
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 05:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654060559;
	h=To:Subject:From:Message-Id:Date;
	bh=Pe15x20LPe3Es32riOfJs2EhpIHYcSgfGYGRAWS0q3w=;
	b=LfiJC/IaQr5dn/FnWexNOK01j3PcpzBP7BP5B6hzBepl+FPD4IZUmdBG4YF2lXrq
	IWvkOlH27EG/+CNFrKywWEUsiKM6+HSEiZrbA5nS5s+nZQsMXNgodZ9SRFc9VRkT9qh
	xXj+/nvDqZ8TXYSllKDldPxj0aqeLDCaugeAMe4E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654060559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pe15x20LPe3Es32riOfJs2EhpIHYcSgfGYGRAWS0q3w=;
	b=DBm08sHzINgIDFv7pMdXw21ogNrzsWnY4WZ5CAAjZ5PzJaP6H0ymqhhkPNLWg5RV
	IKtUI5ZULeh6c2rlS91O6iUDkjrgIkIly35NWGo1RrLwX7u8y3zdZFZg+BbuB5lQvbV
	cOfgDx+KTiEYNJhgRjJTyFTDuJY6LI4UbG3o3w0A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811db12b96-abcc65f0-1057-4f8f-ac8f-44e42c53b59a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 884d560ae3d4c64029b9bb4bb72a8fc5bfc0bf9dd7a9d90b733ad61df8864742
Date: Wed, 1 Jun 2022 05:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654060559
