Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 818FE7E3
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 03:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647143484;
	h=To:Subject:From:Message-Id:Date;
	bh=DfqZDgqnMD4E19lmLwNqcrYyfkewrGvyX9UK7NqhYis=;
	b=bdWy8d/6/s1I5hpu/6q9bpJ7ZLpje7fD5vGa4DzY18j3zFqrUrlkxcYvVybaAtbt
	pjSdBzEhuTHlkpPx8iRRZeNcs8i+8MYyGmBgM74fA6GpFi/P3coHiLK0+EIgJ43tyCF
	5sZTp6DY4y7m5LXFje4vsynRCJUcm+ccL4C1zlZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647143484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DfqZDgqnMD4E19lmLwNqcrYyfkewrGvyX9UK7NqhYis=;
	b=S+qP9LOCNm+H1jMj/vzMpVJy0Qnoso/JM5Bw8cwRldxRzBsmfvuUqKxx4TAxI8x4
	k8Z7qYlsWrKUQEx7uz362dx76jOxH45i6bI4Mq49ii1530zIoJQ1Jty9SHxNDZsET8t
	08ADeSKvnphNTMPdSJwA6Pu7dWKC1EheZdGfR2y0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8166fd3f-1b1cab5f-2dac-430b-9cf6-cdfcfad7e8d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a6835ff6f4a6274a4ca95b503c1dc40ce114714100f639819d955db4fba993c
Date: Sun, 13 Mar 2022 03:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647143484
