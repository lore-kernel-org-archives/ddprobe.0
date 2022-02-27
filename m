Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9182F2F
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 01:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645926084;
	h=To:Subject:From:Message-Id:Date;
	bh=MCWHCD0Ji0AMemCGP8qg0NfvhZoGLFuOdFEoc8U1APc=;
	b=kf11HXfMyvwqodZvl+wBe48ndHsLA37OQwzayGLZlc0MTaf/4R2nwIoSSLSd7Lu4
	CN5yUtwoU0l5tROIg7fjzZEYpYwDKaoiqW4JVRC15xR1TmXXHjeFZV0weahGX1DU82R
	wwgMfx9yTUSvPwle3kfZ04lIjsN5FyQi00iIuyT8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645926084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MCWHCD0Ji0AMemCGP8qg0NfvhZoGLFuOdFEoc8U1APc=;
	b=Km1oVlUN+v49UscNtPOzLGlRExc0aHemMQzTYW8zHrEMYJLWBFWZlfnN+9h9TDL4
	+xRc3ywepkZpeMtIFS53wz1OwjXDoJ1sU/NhyybCwZl9l1VV0usvEOi+MgnhBC4+RhV
	Dcgrv6mAy1azqzvf3jO7eFviRwAXgobEAO3fyI08=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f38d6f0a9-79c45389-1dd5-4dfd-859a-2d16b5224d49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a6489cc7af1749c92568404f21416059d2d5f3d0c8f4a9c68714ce81603bdd0
Date: Sun, 27 Feb 2022 01:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645926084
