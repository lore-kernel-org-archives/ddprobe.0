Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38151855
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 09:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656667612;
	h=To:Subject:From:Message-Id:Date;
	bh=fX86JLiFTKPkQI/1Epwo5Xymx/GCr9ZjBFyMdPEao6A=;
	b=aubIzEGHtSPx4dZlMRR5CPaBymz2zyb6XYYdGH+/F6ZwH5RQGjQY95GPVzbW6H7f
	DnalvL7rIZ60Ads11bQ65octdiEw/xeGS0v453Nbgd+YASrz/Q4PI+xCqTD2PNmCgXm
	ToJoVNAfcOjrcGLHTJNTG3SiKTzadoFO3IzNQPl0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656667612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fX86JLiFTKPkQI/1Epwo5Xymx/GCr9ZjBFyMdPEao6A=;
	b=jiXqlzXFaYZUv5yuem/Rx8kQDX6vWFwpbPXRr2dDtQGUL6Pq6Mxp/Ya0MjXLpnRz
	jCZGIBIM6X+0dptGSY13dmoqzOGNzdj7fv8LO5crr7NmGF1mkKDyD/Lhr0xAoIcZGyO
	PklUTD9ODPNrbIS2q21xnTlSCd7uG/sXASJ9uoNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b915a4c4-39cc19e2-b4ca-4b02-a28d-f48586037d8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cef415817c602fb96dd6c1057133b88be25dc47947d4dd22d5ddc372a1e3012
Date: Fri, 1 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656667612
