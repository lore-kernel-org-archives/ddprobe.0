Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CF93D82
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 20:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649796358;
	h=To:Subject:From:Message-Id:Date;
	bh=gJQZ0Lf1YidVGkkcvybY2t1j5ek0mwa9GsKUdMkgsb0=;
	b=k4qFxpY3Z1ua3HEn1NQmTKADa5W3CilRjcH6XsmXClNC1kT8bRjcey2Ae/kWsX9W
	y2vQNFrPnDa28H7Q/XSoLA9mYnYOiBKAsOFvj26D25DQ1dk2U3NTYKbeLP5zAO+z7RH
	V+57DQ+BYS8EG7vBqEd/UuY3n3FvyNdCMHx0EjHs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649796358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gJQZ0Lf1YidVGkkcvybY2t1j5ek0mwa9GsKUdMkgsb0=;
	b=Rb0z4H6xTefPJkEa+YV40RqSQDKrZmEhCVdE1qsReytijyZbFEN7Sf8/gR2y6e4c
	2rvCrxTrrrdTLTahoH0pQzFeicRLAdXycN54suX9u9ptPoH8CNcSK0Wpuo/STj5gSyt
	bx1bnlrH68FNheMH0kd6YN5+21/V+T4w2Rzpb8XY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801f86a0b8-71f67f90-6aa7-468c-8813-59c7b7c16f38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 331e60afdc9bc5e7a28add6cec8e343ee9d65274f3a33a565fd568126d300b09
Date: Tue, 12 Apr 2022 20:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649796358
