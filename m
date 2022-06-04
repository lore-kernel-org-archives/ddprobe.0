Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED070137F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 14:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654354379;
	h=To:Subject:From:Message-Id:Date;
	bh=XEItuEDAWgvbMvHh/zlFtZ2LXfl4NxAaoLj/ENoyYVs=;
	b=ZnXdzL1nrOu/XZxRmZH/R4qTE2rh2cA69DmnuBEwtE2V8f4rcLpurWeXztkwxfPS
	iFYC2VRrjYSll1d7oad1oPIc9BLR0XwidnsIvBpcqr/M9V452w3AzCxIyR+uvDUw5zD
	iyweVjL39oBqqd+KaUgbVk9+bJshYEZjoY6GcIbE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654354379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XEItuEDAWgvbMvHh/zlFtZ2LXfl4NxAaoLj/ENoyYVs=;
	b=UUV6shIWs+6QiZritPsh3KB577CWpPUFoz8ZdJoElEAMHrJWL22Zi+KNx/8FSa+w
	JLog9gnlEx4QiIJpo/aGWkNfTL6Ruz/FHEhaZEEQ0pVJ4a1/bc89q0BLZKa/kfv7lSm
	oPgB/w7x8tZ0k/jRES05RznA2ijO0vE51UFlSBuw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812f3481de-49399f9f-13e1-4de7-b4a4-9b716eba5025-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2d2daacbcf742eb4f8f6adde992d6aba4df218a0bd1ff1c56b866123139321c
Date: Sat, 4 Jun 2022 14:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654354379
