Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BCB7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 05:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648098718;
	h=To:Subject:From:Message-Id:Date;
	bh=xXFOdER9v2QwqZQMeRBaRUy2MhwNZcvEba7lsqC/sHo=;
	b=UCyL5oHdBTOXPxDPlHYKHSJNSXaRnIT5M5+9Mj0pUtdKf54l8EjBjUWrdmhWenPH
	fcOe3Roi16Z2QDRV8QGyG8z5WyNtqXKFBJa5RJAdI3daZXFDQLwz8bMCNxkvcCyFX+l
	D+JpcF/DcbhD6J40IO8l1hCvWNaVxjupL7nvnJQM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648098718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xXFOdER9v2QwqZQMeRBaRUy2MhwNZcvEba7lsqC/sHo=;
	b=M2ythlLHoMrcPCKAECaGD+FeFj5Vb2rSRKUgz9cheUejA8MjxlIIH3omLFxDhO+/
	1BKmn/EBxvV4IsIK8WwGdeuzqCN1VMnq4/qUHpErQbI4bhTffc5YOu2wP8SkUF+OWS4
	XQsMqgiyZi4q0zhG0xgmmDoFl/fGLScE8V3XbZP8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba56b24c-0770a1f4-0005-453b-8400-c0e9eee625ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fec62188f2d704e1bd59a7a2e1e5d1706475c124a8edcfb41050273c305bd339
Date: Thu, 24 Mar 2022 05:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648098718
