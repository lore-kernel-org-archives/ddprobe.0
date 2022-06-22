Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517DE111B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 20:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655930399;
	h=To:Subject:From:Message-Id:Date;
	bh=je83ltCVq7zm3ULGtisHzOYa0MnpfDSJh/CkC95OQXw=;
	b=Na0edMB+kpzang969jSNqIx8J0iowfK75pAqGHDO/q3mSqrIT184bE5DcIsPrfII
	d3xOKIDC07nT0oJwtfl+kix3JEgoSYQzFhxoEW9IGfJqwcfgx/+CXgqzqLR4EmG4wnm
	poTP+IvAyX/Ms0nMwQyZ9oryXifDgbK2Y1yq908I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655930399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=je83ltCVq7zm3ULGtisHzOYa0MnpfDSJh/CkC95OQXw=;
	b=WLZrPf45nOIJ9BzTn+6UsS9asL/1ibR5D/TjYHCK/ZQaqjrk7ackRKNCJcTmkRx6
	eSez0afnPa5q53nmlCgUPCImE4yYxHwKo+Z6bkfZPur6ArHW8q83RSATp6RJdpngNBW
	4+yJBJboojseTvfa1OHPHuF3BTeBBtW/8qLFN2JM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818d24aa38-0b84e89e-34c0-4d9c-a95b-c0cf46683a4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 256a2edc49c4fa7a9efb71602b682cfbaf5cb478c718f4b33ed1f585a0e6ed15
Date: Wed, 22 Jun 2022 20:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655930399
