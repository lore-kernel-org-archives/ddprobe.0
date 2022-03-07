Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5EA38FD
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646693185;
	h=To:Subject:From:Message-Id:Date;
	bh=QLcWK8RbbsxDeQqnxPu5CcPAfHVsLDXgvKv54xGA1A4=;
	b=gFjAxDrAf4Hy24tsTyXl4HryzfKG/JivFIQLPZSuWUpwzhBKcGzEvWBU2gPPFsFx
	orUgDNM2E5mzCzy0puxm2PekxHsG/7JVddaC4VTpF6pUZ6bUGZeo202qoV/5i9VGk2e
	oJg9mfQ9aJykc2wsk8lZ7hXq8dpiyhbbew/zVgqY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646693185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QLcWK8RbbsxDeQqnxPu5CcPAfHVsLDXgvKv54xGA1A4=;
	b=fnp8kI+ktihIKylNsccOw1o18jfCeIU+lXOEm0vabUkpnwJLPUp70vDC+G9IAqX3
	0Lus9WIH7G7h1ay3E74dlwp3MlEEb3cuTLDwPb1u789LpRWPgwhkmV3ssh8wLERDqCs
	4Y8/mKFkFjq5qzo+jTNq57SdRetvolRliPvskbHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f668ff536-03079b9e-276b-40e4-b8b0-3368ac7715b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecde30d68aa7369b378137b01f1bb7d591a4c4e3d5c9f19d801c8778f40ae563
Date: Mon, 7 Mar 2022 22:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646693184
