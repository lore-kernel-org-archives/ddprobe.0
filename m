Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE727E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 11:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654170719;
	h=To:Subject:From:Message-Id:Date;
	bh=VXN+u2whk3hbDp5Fe2MPl1UtQqcEeDs9I19xECLX5vU=;
	b=jhdiv+jTusgL+im43Wpor/CiJ2vUWcWwkJmU0pnSBI9+Cw18oBb0Fe6TvIvFC5W3
	XzPnDL4ge3dYEQ9CYwNCVicXoIUU1PshoeKJx50Lu3hs6XdrBX8gIBQXEur7Qu7Ctl/
	9EME7t41dqRLZIA2YqhFOqozpKIPOwQCzdR1Auvs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654170719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VXN+u2whk3hbDp5Fe2MPl1UtQqcEeDs9I19xECLX5vU=;
	b=Hgys2Y/C/efxKheQFES0YcaWxwzZk461J3zRuA6lZNnql4fGIvocWOv3LzaGngVh
	bJZSJu2f5H799RoGskl8pZNtuLrK3Kj0DSAazd5ZI7GiJp/HdmZf4mJj3FMEMi+TzRQ
	H+fFM2F+dso2ApeWqcFQ8jWeKZD2rFiH1QhGENqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812442142b-6989bbf5-873a-42bf-9f55-b3c1363bbc9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 237531c93caf4caa8e522e70f9cffb6726075133d6072944b24285691e7d7247
Date: Thu, 2 Jun 2022 11:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654170719
