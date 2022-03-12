Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD0042A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647092184;
	h=To:Subject:From:Message-Id:Date;
	bh=cSSaegXajHpBq2d49JOYhn8F+9Om1MOgFjiUuOI8fNY=;
	b=eokHk6KsjsWOBXv3eysvHg5NeL1whwV3DhGtsnsxcF0u5CQF3Fwg9hEkQWnlB/2g
	ybNhtKNeX0IZN955bHvh5uyQoV0kbGj9mzfv+ktleSukBqddjPVRHdIw0Ga7I7smlG/
	gWwQ+qtBiAMnBzydiPvk+VxpRnygad7GzRnfyRKg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647092184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cSSaegXajHpBq2d49JOYhn8F+9Om1MOgFjiUuOI8fNY=;
	b=NlfWNgE1z7M+83Z6mU41v4CHIHhNUiNHvgwGy60Y4H1HqBRvylCNO63ZdMS3hlhu
	i5MIigXIT9GQmBFcLu5LBRIFhnW5zw5ch+IjBbhRxqJH3zSzy0SYn0WuNrgqWXuPGog
	bUevsRiAB7qLkUtciCrF9XKVAEJteZfs6HvAcHUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e583693-d2788b7d-6177-4a8b-ae1b-f76fb543940f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4efc823d54419591d1666e2398baedd1f67435d60ae83a196a07831ad9df299
Date: Sat, 12 Mar 2022 13:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647092184
