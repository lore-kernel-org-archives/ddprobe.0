Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054F31FA5
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 15:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653664259;
	h=To:Subject:From:Message-Id:Date;
	bh=3CLYgC6zW7ElgWjzsseAwV3ucDRNVHf3eoexdtalZOQ=;
	b=B5gPXusqN1bgNCkd3RZlTsVYzT6JuAylvPB8PMmGBELRx3wBV6KEzwGOrOQJCPMF
	62B+lzGQO0XydHkt7RZqivaYNux82gYltYVFD6mOymYwFh8BqBE+X8hA5MQt91FO6EZ
	aQYpL1v1Npjx2Zo/QIcWcg9ReXPzx8t48Fy2l1+M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653664259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3CLYgC6zW7ElgWjzsseAwV3ucDRNVHf3eoexdtalZOQ=;
	b=GhCkmkQ86iwzR5DgJQJF7iYiNugHFFqJvbydbN5OCscwTPvi0NVwDdpcsZ5las+R
	IGVWy1/S3PTn9fK/ZXt003qubr7wvXVqGyWSu5czyb5t8+KXF+RVCk1dYf6iBfWA5gb
	4pVzZ2iJFgVa2p8khwexWLpMR5X/DR4g5D0qhkP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018106121ccd-1b3488de-0de5-41d6-86d7-556f4d5363bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a175fa5909df278c05a0a159c75770cc188d0d834d1cdf821fb32895f9f2fa2
Date: Fri, 27 May 2022 15:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653664259
