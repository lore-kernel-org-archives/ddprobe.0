Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584B8187D
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645029984;
	h=To:Subject:From:Message-Id:Date;
	bh=M8gpHVm8I5ufP8dSbsqrCwY70CTL/5/OAwp2NnHWDEA=;
	b=hbdry9cZQDzgHvA51Qhcj/qZG2/dvhSnfKD9sZV2HecY1FJRbFvP1nOYAX77KPjq
	NNhMltSrdcLzTyECRalXvjR7LwZ1R96Sb8EpHG4GsTDLj+LDr0FmCOGcXYqSGkBtVay
	aMGQFI+Q8QzwzJV2KDb0D9XZJsAAeBYJN7qZeFJQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645029984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M8gpHVm8I5ufP8dSbsqrCwY70CTL/5/OAwp2NnHWDEA=;
	b=V01j8MONFQuiyiFz+QjW3CrrN5t8qNTLr3j5hCv1rPwy+sP3q2f9JlF5kTfg40YF
	Fu0S6cpOJaavfoz6LLik0HRDvleKGsYghynHroFNoBvvOvVsJV5ESTGlMs+PNId0JjN
	KkFXwuqWgbxwMvG+LgMdfd1+hR8lwOVsVkBylW1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f036d8a01-783d9245-f429-438a-8666-8da33df74891-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a4df4401c20cfbbef372c1ed69f4d52b9e0a37fc2b39d2f7262d82187c7a59b
Date: Wed, 16 Feb 2022 16:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645029984
