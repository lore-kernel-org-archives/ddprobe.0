Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A29A7A28
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 06:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644907585;
	h=To:Subject:From:Message-Id:Date;
	bh=E/DeKCCZznE2EpyBXJhy/Y3IVXCCo+t0xA4BNV+7sO8=;
	b=Khc7ccsLbtHL/QQ9oDOEvLEuhPXfUuF0umrB623D/GQxTPq0E0Y/PTDkgf+Ibg5C
	/JxVQdJdkx0VrhWwXiVHXFZjKcYxuXSg4sYSlvCpYhzU/naBXMJGRK87wQmBWuWZ8jy
	Pz7e4VQTyLgnHwbiFENQ+zhUEbMW5HsKekN4E8Is=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644907585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E/DeKCCZznE2EpyBXJhy/Y3IVXCCo+t0xA4BNV+7sO8=;
	b=V+vyR2RpOtwOT3B2YWWNlWQBCARhCpFGv8WtDJ1xMlBTjkvM/ZbWcnMeOcnuS4pU
	zXlT3rRbzmeXNyi96t17d8rL7P9JkqAnl3yRQ5NsTv4QA2fjmyJBTgIakHWn2D9SrVB
	/tFa4gHbP8rXO5Cf5NLlMnFbMT4DwujLFciRzaJU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efc21dcdb-b1ab5108-eb30-4548-aeea-121480dcd5d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3bd491a6858ebd3ff669c2e3d19534b75299c7a138e4566b25274c6ca637c98e
Date: Tue, 15 Feb 2022 06:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644907584
