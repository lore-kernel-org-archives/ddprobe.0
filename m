Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D802248A4
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645202485;
	h=To:Subject:From:Message-Id:Date;
	bh=DO+AiYGoCnymuQLW378lY4sBeRtpKWRlgdm12UAkt1k=;
	b=DVHuh4UZQqF2ODd535+4Rfegp+mKYazSuMRnuz6HJ7pxVGpRl7trz+jiXWkOO8nb
	Qyy+IfwraCdq0zI5XF/OPUlu+ABqMnIccHWiOslgMEsE4EidQxY8chls6FoRnAWDDsc
	gFU8Lks5nyvLFKqnaumfgDDd1uICh65qN4dTHKa8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645202485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DO+AiYGoCnymuQLW378lY4sBeRtpKWRlgdm12UAkt1k=;
	b=eG3M7t+p1TfIs6Hqn3FtGcuoGSk19zWlVulcTjJvjmMG+caz4Y8O+/mnJay6kEUp
	HpqIIk9uyxXN3t+THqCm0D8H6iwEqQENhjSJDXBSANCatn/q6qOpNrBO69qAMeNytaB
	aH3d6DeQRzV1jiULDGp5vn0pT9rGRp4IESR8R/OE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0db5ae8c-12c8a35a-b097-4a28-a099-df73ebad1a81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8161562e0b691dc120785eb06d598ad4a0ee15717540956ecc503862491e1a64
Date: Fri, 18 Feb 2022 16:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645202484
