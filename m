Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9CA748D0
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646745385;
	h=To:Subject:From:Message-Id:Date;
	bh=DvqtRYh9dCXUVCSrndWR8M3W8PHqj8QvVkzPxpf3aGI=;
	b=VQfJBEbShMO744i67uAyusBRFVq6vc1wblvSAxZ2ky0zeiLPWzTTr3yOvnayzjQx
	HORuHxsEs8CHU5WXCMefEbDQ4rw+OUZL4SV6LPJejYm/fuoMUVGqd7BsqWiDGUrNGkF
	uBqCw9p5SBSmK481GBeLETpWAHsnRZRLKwuCgDXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646745385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DvqtRYh9dCXUVCSrndWR8M3W8PHqj8QvVkzPxpf3aGI=;
	b=jUxFVhJ4x0Dq1hjigCAsirJawug8qclBNk5NlU4VR18WWu4Vka7wp3yAYj5c39Ih
	taPUHDhhe72+CPvlA9YxX3etcVRMmHigUWKn9Bc0vIwwO+ZIOYB+8a7Qjb2s865fa4+
	D9CZGmKOZ8lu5NJUaFSGpQx8+vB5z5FxDrbS8S18=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f69ac772e-9134f8ed-63bb-45f4-bb80-ea1fe924ab06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76babbd2a0f7861ce8d0435f23982c4d5b4386db0eb75fb67e03bc8abf8ab274
Date: Tue, 8 Mar 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646745384
