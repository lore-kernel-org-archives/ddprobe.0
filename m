Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EBF1383
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 13:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652794559;
	h=To:Subject:From:Message-Id:Date;
	bh=UL5GNLWh9EFysd3Iv6ZN33nrwS9VdAqaetIH7qf3Rhk=;
	b=UrHyO5fT5ReIL7A5eQBtKZhC6mLEdhvCz+A2aYWgnlmfDoegKlDSsS9SErVMy9CH
	ViirnlkAWfO5FRsG4zILHr3g5J/rSVQxV1uF4/Jgq04zmLqk6u6lIJECrPKPgAT82wo
	o/oDw252BAM5RDYm0kAauwEvDtic7aMvow8kD45U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652794559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UL5GNLWh9EFysd3Iv6ZN33nrwS9VdAqaetIH7qf3Rhk=;
	b=VS25ajRBk/pWvgZK9iqCUijEvR7uf1lgy7YnpJCA/BlbOt+QvcRK1T0lnPWo/GFZ
	iPLFckmbWij2GySlptLFrubvqcb2Q807CPvJTOGKjO6z7hhMGJnXJDLmrsuF51gxsgx
	Yx/x20IwhH13ogNnBqMDl4O6TkqMDon40U7CSi4w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d23b8b50-d9198a91-1815-499f-a6db-cff51f512a88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 178fb10a0b90352674284a2cda93d87878b17a6a5f8403adba997fa6a44df96d
Date: Tue, 17 May 2022 13:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652794559
