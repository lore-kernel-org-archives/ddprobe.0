Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F088A3B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 14:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651068778;
	h=To:Subject:From:Message-Id:Date;
	bh=aDTYG4aODJeDl4neV0znkD9Z5zp891nnRjTvLTNBzG0=;
	b=TU2SHM2aBhUepNsKir3IdVS5D4FIbgqEl4zZD5qgGS9gULY/1f/AqqFbKZtemUuZ
	7aMRXuc9hM7n7L72T/g+9uRPubBuxjQBts27nCSZtmsLYchgv4KT7JHg8XJFLcBT3A7
	UqzgxtthRGI+ZXd9f4qTuJa+nPT7o2731l/Cnz8E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651068778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aDTYG4aODJeDl4neV0znkD9Z5zp891nnRjTvLTNBzG0=;
	b=PKymreXxJ6FmVO2A0gArd8FzmSE4Dqxmqr3Nd23fJpvIxj7Rjf1orEWdqi4DlmTg
	B2suYBzdKTIh648KV+y08bJpldBBozOIrKHheHak9gal2xJLEvRtRFF0xv9I3xdy6Nw
	gqOjBLJsbhBRKPOM1n7rb0wZmXqcV8v+hSPt4eoA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806b5e3710-7065668a-9afd-47ec-9bf3-fca152fd5269-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08607e891a564f7e421a0d9358de9d9565c3b489c8910262dbf38e39103d033f
Date: Wed, 27 Apr 2022 14:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651068778
