Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B6B1378
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648023984;
	h=To:Subject:From:Message-Id:Date;
	bh=sBhRdIPm6WjZkWkzGLiKMzWN1b0EnILprOTFceUovrQ=;
	b=m5TkGY1qkdXmYRtfM2vlFPQVqtrlv66fKDpapQUs6W9AvDYkzu8URxe92TieU5lh
	P820gpIAbrCiRwMGNkXZPtPQFWi+y2J6bPK8Xr2scaklEa0pOiK5yybgTvFVfvYnbWr
	QGvGA37uoVx5TmwsIW0EeYjDm3kLUR2b9L5taHWc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648023984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sBhRdIPm6WjZkWkzGLiKMzWN1b0EnILprOTFceUovrQ=;
	b=ioNSv1HtCuNXO+2XPXk4oxLP2bf0ebnEAXfB+zHCeMuJ41qe+k5rLKJCleIBIqbh
	rni/HnSzzPRC0n13yS3uPoNC6OzRRM39NMWQE/64ob07Xi9EIaaqJKycWQHoVh/J6Xw
	dXQDSExUwIUKQjTIniIcy3ea//dKwENKZ2uT1Rgs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb5e25aa2-ac81a308-27c6-4abc-9b8c-60fb39a0c6f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9a26763e4dda31f671a3585cfc0565f04d0d9ee12088528d0d6f1d0f06d9e68
Date: Wed, 23 Mar 2022 08:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648023984
