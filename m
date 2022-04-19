Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0ADB7A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 07:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650352738;
	h=To:Subject:From:Message-Id:Date;
	bh=jBKJcYeKpN2uKvvPfUL5zXuvPTDJYvsqjyacF738H1g=;
	b=ILo1T4ItYKD/f32dZauvd8ntBd+PbgorJzm33PtzWShu0WVbHHVCZdfPYk5KU1Jq
	gRVqpWUTEPqGKKVHigofN+aPyldUbioxj0rFpZHNMM9LBLhWndJ8eKj438520rn+jRZ
	Pu0DJRizrrN3ZY05JGxFPjtrE8pMfd3/6fqgccWA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650352738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jBKJcYeKpN2uKvvPfUL5zXuvPTDJYvsqjyacF738H1g=;
	b=PK64TeLxuXAcTGHDLV8gDg3ANDqQjrOMv6JNt8c+bgIjU6RzNwXCYTkqaP0Ljncy
	4RV/b7s5cN2JArKmXXd9DJ0fmaE8Nl05eCA/cYvzwx6dLfOUV/Ne4tRDrMLIXzEl2IA
	Tbm2cfWQKvjbG/5dFE5zNkiE8qUmcB5bMM7V6CZM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018040b04fd8-5dc4800f-bcad-4493-b0e4-f71d8ff41bcb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9a0705240cd4539bc220476664374127321f9c6fc26496403160370b2369589
Date: Tue, 19 Apr 2022 07:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650352738
