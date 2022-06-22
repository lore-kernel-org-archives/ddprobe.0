Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9CCEA8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 04:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655873099;
	h=To:Subject:From:Message-Id:Date;
	bh=5yYCXfjvcyNxeySxrS3iBq6MYyHF9J2z4/dtv6UyX0g=;
	b=VmogKmyJBJhpLmIvw46sIwEySVqlWCL76sBZtpjx1oJsrppnKI1MYzXpwzR0R5FL
	eDGUOMJ2/MPDcU/Oolcf9nvc4c60O+1bPdU2LNCY4+6vKmLytbKwTmR8o7qlJtCQ3u8
	U/fsznzHWRGv+xnVr983fsyV+QoLGge5p19rv57E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655873099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5yYCXfjvcyNxeySxrS3iBq6MYyHF9J2z4/dtv6UyX0g=;
	b=Wbt8IWZDfo85QAaTEMbBog2ikaNS5COksSci+D2rUwZ12Bp6+eYl3mtm5w3hy+KH
	l9KeYYBEyXYSRIACzVQ+HYENw9p2NzV3RdVQpUkgbEI1WG6StqmieMhnWB+GJSjsFOz
	lseVzhXW1NBWYhoGbZqL9GFz13Q2zCH2lTldA7AY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018189ba55ec-9367dc32-3a10-44b1-8ddb-26a8f4a2beeb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40ec5a23c49a17b5fa2d25f8ede51c7f9fc7ed704a6538bf1975b7f8b5c3a71b
Date: Wed, 22 Jun 2022 04:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655873099
