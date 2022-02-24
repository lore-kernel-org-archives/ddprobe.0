Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FD2E7A
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645661185;
	h=To:Subject:From:Message-Id:Date;
	bh=vk/kk4azWHPVBKq9Xh2jyQ17YhcBPfOLY1oH38XtVXU=;
	b=YimpImxzKBbkuztBlrgAf4FV2wI2U52gNPWuKdjlzBEXyrXSXQD6PuaIlb3EVdXd
	aHrtt/EgWDo0Lbtqk1EzQKB5mDvvbv0DGyxcrbeHqrU+sbq4mOkAyjNx99SzmDvqwhC
	CdxdVp55vcchNAloYMfnhVetJww51EEjtDKp0kbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645661185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vk/kk4azWHPVBKq9Xh2jyQ17YhcBPfOLY1oH38XtVXU=;
	b=ltyme00yV4Oyga5E21gRjpaJfSVTBobpy+ImIpX45uuKEZQt9IXFIItumgKlG0Xs
	tzmeC0DMH3USUj9Re4WWtW5T/i6YFWjvTcubjUgdGsiwEFdGhZL5nnJMSkthpt1bnN2
	xj4WcdsxpOoiQJ7GgM3jhse17+KxnoHHxG5jU82k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f290ce357-f3cccebc-0ea6-466e-afbe-f691a00c6377-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 505d4bddf4d9445ddd39ef7a674e8f9b18bc4b4bf76727c8b82da27c08484c98
Date: Thu, 24 Feb 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645661184
