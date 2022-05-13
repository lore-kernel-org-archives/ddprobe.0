Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6E37A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 21:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652476320;
	h=To:Subject:From:Message-Id:Date;
	bh=3z4e/o32MasQTS370qV+sdcZFJpmZ013vLorNbUDWfw=;
	b=kYsLIe/RnnW7dhb5XYLs47N/YWqLTg7uEuj1oUa3Sk/Au4fwrj6Gw97vC33MldBm
	z/2Tc34/NCgyXRrHKuBmRPp6k/nusFR/rjb4HWl/2NGskE1d720/jXnq2ofqsfHbCPH
	6ScjR0u0ap6eDcuNkwCQ44TdpIGOgnwMrI6g0Ld8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652476320;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3z4e/o32MasQTS370qV+sdcZFJpmZ013vLorNbUDWfw=;
	b=YrLIG4MrnZhhhbsUoUu5xVsjvX33DVjoh47trnPOTX26DP/8+XRUV85FI80mGJa7
	siPsoWXH7vdew2OXX13fYO665FtiSf48Yr2VELW5TBlUt3X4mcfkdQQl8izNb0x8V+t
	B31QTxpI5jzMqdogEZIfVdP6ElQSjjTWRpGa/CDI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bf43963b-0393ebf1-dd51-48a4-b53e-6c237b1fff9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a173c2d57dfb0b3d2036888478d26f08d66654361fce24ca6fa051025f7a0459
Date: Fri, 13 May 2022 21:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652476319
