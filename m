Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C7A4C77
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659116453;
	h=To:Subject:From:Message-Id:Date;
	bh=Ipx3mnDfmspE/Erx4kwUwEUGpsORWS9g7tjZ5d0zWhs=;
	b=lTQ4mCh/rDYRCJ5TeRHIpmfOp4lbkL9eN1wCdYlmmybzN5F1b5wPfZHi6rnuAWKy
	5y6/5zi1u9bYpbj1CQhf9xdAcCsQwQXmbP7vPKD3R7JjGHrQ1/Wr0OVIcI1rwZO93pZ
	M1hjj1kxbkG+J8ePDSqBf8zAtmQMdaOkNG/TRS8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659116453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ipx3mnDfmspE/Erx4kwUwEUGpsORWS9g7tjZ5d0zWhs=;
	b=E4je77Sshp6siF+A8iep3TXN7LahJCELsuU23m+9IaoZz+fl3pNM6WNOWBT44YIS
	0Mq7GxV14HnK1ebvU9XcfTvWP9kBGMIVBVN3w4NgbBToRTRZsN3gT98TIyGfgqxNSO/
	FV4QHyhyijhSQw7H7KQS/PautwG6iKNoPR4zV9bY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824b0bfabd-58eae730-6779-48ab-a04b-c3485c42cce6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 879e72405b0c576e98ccebdc2b1ebab5c90c3fae337c4bf47a678690cb5ce184
Date: Fri, 29 Jul 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659116452
