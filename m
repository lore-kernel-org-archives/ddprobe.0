Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D467A
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 18:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646072185;
	h=To:Subject:From:Message-Id:Date;
	bh=LCeRmI2+7BBf3IEvTDJ4hMSyYoEAmDCzeqOHAeH5fmQ=;
	b=LsmkmM2N5x1hdJYOAFAu7vMbBAuF2+hElqYaoLdR9Gb/e4OT7NZbD0t6HSJMTA/6
	GKfPvzHxXzfp6ToAFOjAbEBaVFFckamTaZiNbfZyvGjEOi9nmk2s5YdrSOL/cdxl4lh
	PNimFiYXdQCXpDQVnMnH20m1VVwSxZtNpb8pTELY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646072185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LCeRmI2+7BBf3IEvTDJ4hMSyYoEAmDCzeqOHAeH5fmQ=;
	b=Ww/S3W+otY1IydtS5wCOL1BRQLjNGAmI6IkBdq/PALVv9B1Lf7CBpY5DdkOGyWx0
	h6ZwU180L/XP8SDvEjZyqr2KA0PhMV7gUaxpBJCXxP0WfkdjwtXTd3FOXdww7E6N+A5
	2oHjxPORDcqZmGeNkvckBsEGVE2Ct6nqTG+m6s6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f418c3fa0-81d57b90-fbe4-4795-a70b-b261102d47dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4a5acc3d582fe38d4e6be60b1b067865e2d3f324c4905542a5462ec87b494c3
Date: Mon, 28 Feb 2022 18:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646072184
