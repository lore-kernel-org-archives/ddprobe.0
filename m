Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2C520F3
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 05:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652420099;
	h=To:Subject:From:Message-Id:Date;
	bh=arvrRfzUDYFNvaUpQS5BzCn48bZ8u+68gtr8XnPP02o=;
	b=hFibOLxv6fMABWCNik35BMoCfG6/jJk7X7zxzSlDjcTN2/P68A4Wi3IKQYQZYVhn
	nWmvgdGnFHNvr7agkr77IMPEWLCUa6aF4n+qEF14/jW4jY18FzWn1xI92pVelzYL8VB
	6XTSeTVo+IAJuPeixwbD1neXtZ4RNwrw+o0P17ZM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652420099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=arvrRfzUDYFNvaUpQS5BzCn48bZ8u+68gtr8XnPP02o=;
	b=JccwKA9fAh+Xn31Qy1Q8BqgctvtaJlT3qekFdbMQkXGO+UMJJcKrGLxGJftFNsqT
	+Mc1nyiVc/lpCiSHFO+/4h9wMx/BZ3jhosb58f50UjV3WbLsO7f/sg4VLYgNShBYxU5
	zrdT1o3chJw+k99+/Q9ZVur4DlF8pOWEGg6KO22Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bbe9bc98-d1204757-054c-41b4-8215-f5fa53e2c7a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c08a80cc10cead2d21ccd581c7ff28aacb852e19c219489a48aae4c38472e275
Date: Fri, 13 May 2022 05:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652420099
