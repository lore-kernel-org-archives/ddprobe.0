Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889A4368
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659510052;
	h=To:Subject:From:Message-Id:Date;
	bh=N+ZHwest+2zM3B9M3jsqPWwxocaMOLs/bkxwk+6emxY=;
	b=BiYQCqf1GKtUPqnQelDCUaD8vJ9CoCOg3m56Lxo+7AV9Sy2v28qRd1OGicr2yUDk
	Avj6JBduUhBtPnNTvKLptwUw6rUmpLTpAoek7dWwX4pOpqtvMRnyFf2frb6nslbhnzM
	mDlP1Q99P8JXRvTwCyWfxE9fTpgCULnA8yFhchR4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659510052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N+ZHwest+2zM3B9M3jsqPWwxocaMOLs/bkxwk+6emxY=;
	b=DujD98zdy+V/SV/w2m6h/bJDMFGiZsQOZs95MpnMf83G2cR8lAFvaFd3DUf1VQqx
	93Hu3etOUmII/Tb8rkB1yvmQI63p25YvFJD9BXGLFWTMpjPHIvyfe6GNWlED4LLVo9/
	DsYZ9mqffgfhfmmCbt+4rZua7LMG0E6prVYgBXno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826281d6f6-83d6b702-de0e-49e7-9f62-31d1f56725b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afed921f331511d3d0b9a37cd15641ab69884ef518af6ad3ab21edd5a7c5cdb9
Date: Wed, 3 Aug 2022 07:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659510052
