Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286B6622
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 00:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649465938;
	h=To:Subject:From:Message-Id:Date;
	bh=CP3jCR4vKV6BLN7xVFxkYXicpGASXFFC/b6rJJjNHA4=;
	b=WxTxfGEmbkBX4zCGYzw/Ey0hi7DK61Pw17NHbVaN2KkGZTtTshvvbkJOBkNIR4H0
	umYe9yNB9xpOIrSAd/SrTUe7ONI/xzHMJeUxmhFNU+ADsbr48AuF4Q0XvSUAYboMNp5
	W8q+pXsdieObwaZQs4cLifEksrTDKTl4r5vrEluQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649465938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CP3jCR4vKV6BLN7xVFxkYXicpGASXFFC/b6rJJjNHA4=;
	b=Zq2T4Yk2256hviSA1C/Rm8LxbYdklon5HDBlhrdcwLMhl13qJG7dae5VfrK8E+8A
	R6eVOnBEEPdJFriAaU7znqsA8Nup3EmUQ5D5+2QRcsl1eEEKRMIVtz9Mlk8S3+Vgc6K
	a373td6lvTPn/EXDLUMcuTSdwY68bjh/nWhebrXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800bd4d182-8b8fcbde-964d-46a7-abf7-48cca00ddee1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cde52e69eddd31304fc59ac968b7125923cf5d25e352027894fa16a428fd817
Date: Sat, 9 Apr 2022 00:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649465938
