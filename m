Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A6A7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 07:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655622419;
	h=To:Subject:From:Message-Id:Date;
	bh=f51Jab1oMJRyH/SV/E4HagegT4ROK4TFmDu53I4Gucw=;
	b=lH1LKS6vdou0VgLshzZ/DToMCWm7LZeKZbamXrSQp/TdWwR616RsDVyDNTYVi32R
	yOWKs3/nMGJP7y1JuFuBtOpgPtt2VuckIP13Lni3wE4i6HeCGEG62izWJDObhp9eJyT
	a1yuvxumbQfS1vWMPnj1QBMx22F/4co3St77VquI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655622419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f51Jab1oMJRyH/SV/E4HagegT4ROK4TFmDu53I4Gucw=;
	b=fWQslcswQC1xr369rJCIlslclnxPyELUDZ4Nwk6iM/id+qKdPmtydcCNaVgA8aKs
	+FJkMqRSDRqmxUlg0zm4xpw7iufEtHzLrKmepQ4dl/o3yE2eEUB9TbHEDzOfRYQu6qx
	sXao7zoyinN3oOS7kQEZc3Mtg2yfy5X54nA0tZbQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817ac9430c-091ba68d-03b7-4f2e-87cb-a2b00b2e7c8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20657b08fe06b39d6ff6c1888d3f6853c678dffaae68c62627fc7d0406ae3fe5
Date: Sun, 19 Jun 2022 07:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655622419
