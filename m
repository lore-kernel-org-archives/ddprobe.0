Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192A27E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 05:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658639212;
	h=To:Subject:From:Message-Id:Date;
	bh=ABb85P7jx0TjR/Vd6Nsq+ED5tfzzlke37Es8hlw33L0=;
	b=ekhnTl4Np4uj2PtOUrjb9wO/2bmaBSGI1UPA7rxJTgkK4cGBu/9ndLMQ6cYPleqS
	psarjTBrSxb70KXeMjWZ5Uj4UVVnaKU75+QVFBpKwv0L4fBufFwh+LG8JvS9xUWNuGk
	SLZmBaRAb018Ygx4NPuF0h6+Rb9iO56oTE5zWpAg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658639212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ABb85P7jx0TjR/Vd6Nsq+ED5tfzzlke37Es8hlw33L0=;
	b=i6XotHaD4ez0zFCqWg4WOEveP+81TqIGdH2lcXfO+DscNWW41wdT8v3qnjsrwGm7
	gOmQX6C2Yqt2sEBSVQlapISDqGv/6ps+N4vZqkj57HBXAt6xsglsQIi/CRq6he//K4N
	clfLIbn69RS9KYSub5cAP5yTg5zBy6VNLPdZkgeo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822e99defd-add6f9b6-3f11-44bf-a214-a91a58f8d143-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9928ded92111443b91ade4bd2edd503d5c1d5d1bdeaa22e2f2a1ccc0855bc38c
Date: Sun, 24 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658639212
