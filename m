Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139F27E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 04:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653107819;
	h=To:Subject:From:Message-Id:Date;
	bh=MyKyksLQCRI0gVB08fskQD6hr94TGE3oNtT23gPRfhg=;
	b=WQ/Z98RlVFZYbyuLOYmIn0/VNk0DpqBHymu3YgVU/gCvo4qdMLOYlyZ2nBtl/XCC
	E9g8mE6ouycibffyVpYeyQC80xP8qEK3sISD2H8Qf5ql5Wc5SgZSf1hf2RPrr6/RSsR
	bdNOB2nNsHkw0bQTwurHCKyzYj0SFeLw/LzKAIH4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653107819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MyKyksLQCRI0gVB08fskQD6hr94TGE3oNtT23gPRfhg=;
	b=EKLomGaHu8egptyDzsvNRg912VhImv4Js3nFG1OTuh2OzA3dHmKlkNTdxCGbMs80
	BF5/Msn6macp2/QUcj0i2d7BidQ6+bXzEcVGX5fHStknvaw4cXcR3v85w4ZLwo/Go+f
	cLpd8AxQIhC6d/GohpuoEKZFNPdpTpxRTaiIL2gA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e4e78343-0f6c6234-7783-443c-82ef-963a7f8ae568-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7840a371ea618ea07c023bb23ba1aca85c75ec32027632db3ab80d86cf709645
Date: Sat, 21 May 2022 04:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653107819
