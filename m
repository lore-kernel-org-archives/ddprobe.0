Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8523254A8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783110514; cv=none; b=tkQQR1iNis+OcWCe2JtqObwsVFwTKVFbmf0oKamG2WXehwhCGuwp0aUwFT13fFDguLFOwRA+V5/sCu66BGrpRBejcnIoK1f/3yprbZ4QxooR3sJWlW4MwzUrOqH6coWb0Ufjlg0Ldy9guit1L9I/LdZMU0PptwJzQj/8JftzD4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783110514; c=relaxed/simple;
	bh=xWCW8l8LtpwGzOkhJo6WUQ8y+ReCpKOum/dBQX5sEwM=;
	h=To:Subject:From:Message-Id:Date; b=LFk3x0u5/vxeXc/T4vfmabJvR+8kxzzyzPkJXzYu8ksJbahUzF9CvFZ8y1/n9V1ukvm3NSFdCK5dKPTTl0LvfHDtxfl+FV4A0SG9qwRqpZDeiMDf2275Blt/Tlq/O6WOIYIvGO8cs022HU/ZffoCgkrIrJMdvog7vPwo8LB4Yog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5uHeItG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5uHeItG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFB1C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783110513;
	bh=xWCW8l8LtpwGzOkhJo6WUQ8y+ReCpKOum/dBQX5sEwM=;
	h=To:Subject:From:Date:From;
	b=U5uHeItGh3PNvJRV6fTHorqCK864Ob6prdHvJAyZz8Ys8SNfuIHYpPA60RoQxhLdW
	 L2u6GtvXcWoHVXgsRQOS1Aw7oLSE+iADszCNmXE4IFgN7ZNwUphfWWunyo6QNJW+fC
	 7UjOKyTjLfBu7LNcwDIeFRfj6/tBbGhyD7CbTSdrRbaatDjr3umZQxxhxzHBhi4Jt3
	 U+92aquC5qU0IQOT4ttd6PRotbfXk/q1quq9fzi1BSIhZj7puO8QCtlXJAbw1ommg2
	 WSnLIEJP3zytENlRydSQ1GZBLWzHlyOjRhkXI7YfOBxL1zHwPXzorCg3Jan5PQ21EW
	 2JmJV1uJfGtGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87E5C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178311051368.18600.1906357888999705118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d03bdc19308c227883fe380587da28e356892110230584631abae0ea56fb40f
Date: Fri, 03 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783110513
