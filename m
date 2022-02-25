Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C331B60
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645821384;
	h=To:Subject:From:Message-Id:Date;
	bh=cRc9DwtqBqG3mcUt/NEBZQsruDfISmqZbS1nR0LVWUE=;
	b=hUeUrb9K22AtD73zi01MbE1hWKFV6kjv+Oglh1M2Anc0JXqYsJ4hWD+wK6MFDogq
	sZHiLCd4vUjQH2GhCOSlWgsNeeJM80cDWGSYbqIVCte3gjPGHCXAQpYvMn/XXgcNKaB
	3LOt93lVyQrNnQrJTult9Ww5C2NgrcqxglkQD/gE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645821384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cRc9DwtqBqG3mcUt/NEBZQsruDfISmqZbS1nR0LVWUE=;
	b=WXX3mnbuDhrXbwZS35dmja/x8UYMdMg3e3blQLCcTFDn8Ct8J/nC2+fptxCOYFLN
	V+XolzZFXZVdlBq/xIy7omIHmE/IV25flJU6sPVsw4xTGH8EwhwwuAjWSGiRBJsK+Zr
	bZLCCW4vk+pdRhhPBhOrvNDmhkfhSsVfG663syNs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3299583a-b94a4e49-3f26-4a0c-bdda-028f881919bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c077f756b08ad7248a17e1cbad001b052735feca64c845a43ad426048cb1a74
Date: Fri, 25 Feb 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645821384
