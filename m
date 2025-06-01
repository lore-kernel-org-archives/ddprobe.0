Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFC2B65C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748780994; cv=none; b=UC2+ps4zQK+Ij1CTzU6DwyAyM72RVKHGfZnlj8cadcyrWIZc/7O3FXvifVR7dWYBtbkAoYPmX/spdheXA6TNes9x8MrpCMfImau5awQ16rUlbSMuQFj3xShoCiPn5//VKxttUEwEHgmOVmp5GzvuOYZi1pogzN0T0aopNBX6PNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748780994; c=relaxed/simple;
	bh=MbXMUuH+GGCYd6JW/OVGO75UEi//abbOtoLUZpxpRxM=;
	h=To:Subject:From:Message-Id:Date; b=LhY3KF6qoKlCtDpnMZbp+oJmVcn08g33+s6/aahOLyM8F9fRzvJlj+mKHiGEzqKHKKUqklYP4/MSJel3StIn50n7oawIMm3dPk/18KNRN3ZdBf1F0SJPmMYW4KAF0qsid5Sejqe8ByXMS5TH9d8BRatQi9dVnDq8UWz3plFYc/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7S2tZvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7S2tZvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21A0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748780993;
	bh=MbXMUuH+GGCYd6JW/OVGO75UEi//abbOtoLUZpxpRxM=;
	h=To:Subject:From:Date:From;
	b=e7S2tZvKTeN4eOwE9Zn2tRx5FPabsEipwOcgsTgHZlIExrmQXBnqgW9qvGtzeDMZd
	 3tUqTmeToYJ0ZRAQ9RglBX2OAq99T5g18Jgp3yTwCNjB5cwUx+Uq7WNcQPDEL1aJn/
	 kxA1d/e5NFqfPWBCE974jN5sA/32q4s3kTEOaTz7fGgFpcbdHr2lh/qx4HKQd79e7M
	 mT+8R/cxI4Q86z8vQwkEL8ztZ1QkbV8rebbJSkPTqTJ63Ybmk1nQAmPHRjg3Ia762m
	 6KzpreOWl38T8mFc57fcORBGDExH/PZC5NcwSeQUzB6aiajpoMUT3jeTpAYSK7olzc
	 aKhMrzkUwj8kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF2C5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878099358.22371.3302173875252969570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c86e47638f45c04e789b9986084f962eae17dca87ae34b19eddef299c13de2c
Date: Sun, 01 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748780993
