Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144705381
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 21:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657920412;
	h=To:Subject:From:Message-Id:Date;
	bh=VGEDiPqutTAH8MG/Z3peW9H1TpifJOpHFFmprGMBmWM=;
	b=Ksvx7MZhCU4/w13GDSqZQw1ysBRVdq5cSUAjG1/QgdI2QF15TqnmxIujRCowvaFf
	3pXaLuW8sCc2Mtpqi1vXO4PG8Jxmwes+mhZFRM3WWQBO4/4BdubM2tkLJFG4TR87yx8
	o7p3iIPY9E3esGoJyaD1g19SDZ9PSEaq88J674/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657920412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VGEDiPqutTAH8MG/Z3peW9H1TpifJOpHFFmprGMBmWM=;
	b=Nowo5daWHjYDFrInvrvOy/hZqRzRZPmX8ws2uNPkSi4DRT5J0stoNOwRVy+YMtzE
	EQvhly6eYMP9pgg2iyig6kPHQB559xZWf97xVveQU96hVnaTHas9Q44nToFqpDz4vW7
	vMhulYwyfhQQR2hk7L9rNwUAGki7LHzQbrFWPYKY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018203c1dac8-f34e957b-9da6-4c7d-94da-c1089b551f11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fe90e97de1e6f78510420778818ddfaa9d35a87bc91a0459e8bf7f8ee6d0921
Date: Fri, 15 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657920412
