Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67B97C
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646163985;
	h=To:Subject:From:Message-Id:Date;
	bh=LjSJZiG2nPr6nxBGDhelcpzVnanQBoJmScZT+mDB7pA=;
	b=TsZExGnxp0i44GtXrTbOE8AuJc8Via0GtbvHbtQjQ6YBC1hBBp0UbDdJXkwYSKmR
	XJPq+yaH3ryPyFcXcLFtd2642uLyelmCp5zb15rdt/KTT5tWQRkXZ11PjkWs6NVgENK
	+qiBpalwRjmnNtrXEiuIy1t/3zqqkmw/TQ8CYazc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646163985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LjSJZiG2nPr6nxBGDhelcpzVnanQBoJmScZT+mDB7pA=;
	b=bO3E/ZzQgzzBJ3FF9i6pOEGq+G8h+T7T83/UYwvpigw5XXJr30rGBGaWUlqW53nO
	rB0iU1BLjqFuavxulyfxGXtLiRTswFTC8jVaHBFJaLtPAZ6qCOHm6H82nMO0MgxPeYA
	UGEMnBRPFOKMMVQC86kndDDqExsyRLZ3fdjGnZKM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4705021a-cefd33ab-6bab-4e32-baba-e85789713102-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5df69240e0394825426d4cde51c4905c0fe490e6e6a90c8ae73c887d266392f3
Date: Tue, 1 Mar 2022 19:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646163984
