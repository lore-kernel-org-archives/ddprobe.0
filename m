Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A8E33C4
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 22:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652998739;
	h=To:Subject:From:Message-Id:Date;
	bh=cZgjF6sKIibOeN/oOSXwmTnTA3CVahONazFNLLSWo2U=;
	b=D8zDMtaeccQCIGzOCTuOiD4KymM/eeFjjeSoU/9nI2PpEBh59AfHWBuhSCicAq8y
	XyP6b71Y3TyhXcnqsJnakUQeHa/BOvFAxzVmFVieuVsvLbvB5lbs2bts0pnfy1cdNWN
	+yXBon2L0cv6+DDuvSfQ6DSWCU6xy7XI+0Bx/S2Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652998739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cZgjF6sKIibOeN/oOSXwmTnTA3CVahONazFNLLSWo2U=;
	b=DpV0Pf81pjusFcm4QqIi/jfrPLq+RQOGhOIpamJ95qw2b88rMz7QOyq7wW57DV4F
	Kt4Hy2drprnhp9ZhxCOGStYsZp4r6vUeHMJiwDPukDqFpYftKm5pfCB792qhY9jaor/
	MQddzJKrGiy3C+rDFj9aUrD5+Vo3F6rkEbfq5kMU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180de6715b9-7b1328b5-d9ef-49e0-9d74-0ec3362706d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35192b3201e294c109a519eadf18af5652148aa5f7e6a8f279ddeccd6f840703
Date: Thu, 19 May 2022 22:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652998739
