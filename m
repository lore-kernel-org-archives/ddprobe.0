Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F551FBC
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 05:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658296012;
	h=To:Subject:From:Message-Id:Date;
	bh=rxvadLp9DqlL3kRYWvth60mxIw978qqQHVkaFlOfl3g=;
	b=DJuxwitIc6aYcucnxrzRUEHD2N60l1UbWyKsBoTr5tpTUMveEsAu9vwCQbMO0RiV
	l+bmuvO0Mgv3yV5TqxKoP2AhxY1/IHpLpJIC4UVW+CkStxBYCl4xYr3s3VLyYDvH1Td
	jiO/Y4z/262VeeRG7KoZyZkPSdlvlGyUPVdpfwcw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658296012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rxvadLp9DqlL3kRYWvth60mxIw978qqQHVkaFlOfl3g=;
	b=Ew9vDAyPKbp1wX5/2zAo+OPleWKnLTu1pvbK/Rs17HtUuSvT/w1xRqi2RFFFpD4i
	cW3wC2y1n6+uOLAlkoh9aFBDCIVT2bbvFB1MgzCXzFAOJtOMwCwav7CfOEz8FlRCH0v
	VUvcMaEWIsgTbqXXg6f/GYhjcu4Soi93jk7HqwVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821a250e19-7d9e2371-f96a-4001-a362-9e04d38510b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1aebee351ecf3677a2f575c9c6798857dfc3354902b5cf1d440eab78eb382c51
Date: Wed, 20 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658296012
