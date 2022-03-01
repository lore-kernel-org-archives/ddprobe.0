Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9135A12
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646137284;
	h=To:Subject:From:Message-Id:Date;
	bh=+XFqHdJh2ubh8stSMnZvExHWkYCZWfmqtk924OZ+Xpg=;
	b=Hv8Gw+JwAfYwKvp8m6wesActZVARKpBgmxzKPCIdOjO1xA636QeJhW9vCopnk4m6
	hHqjPvpt+QpJ2AzROtPeCtRtJts3Jsg0+d9VwKdihwX6ECDO1m6NMF8GfHFkfgWfcu8
	wztodJbSpZZAuDiafXWU7gXD/s+hkt7vKqwP0s4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646137284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+XFqHdJh2ubh8stSMnZvExHWkYCZWfmqtk924OZ+Xpg=;
	b=fXvUENnDT5EzESn3/SySATak5WqlD+LIfvmkDFbr/kdK0hnmFezGXEcTd30nlMye
	He8HUZBBERLLMeyEPMiAfYrUMcIqai1CEVEQfBQUaRQ3yKcGwfjNr41SzATdD2qS7ve
	yUpmlXLLRF57M/V2WLl2VcWUHL0FcLDfSDuwNpx0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f456d9857-2d95ef22-ca05-4833-9681-81a28d0995f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87443180e6b4699bfed6eb6747839fb669be64db74b029965cf18abedbf5330b
Date: Tue, 1 Mar 2022 12:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646137284
