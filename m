Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D59806
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95546C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671341487;
	bh=tgXw17HfMz635nbKvHcBQmYP6Konsdp9UT61cNUF8Qw=;
	h=To:Subject:From:Date:From;
	b=CKl3uCyc9keghMlnO0sJHSwO+HocESaJ/O2RsLYL3fNn8yHl82m/GpNZI5bsbAr5Q
	 BuRH+7xDVhH5zSsbt3eb8uOsAh9B7mWk09VD5pCgB+bBm6Wb7U15PXY5plZ3xXkTt5
	 OC/exXh6sQUySTp8rOtTsixEx4j/lyNnjyY/c090PmUOsvezo0ZBkYTe+me06qOuGo
	 fPC+M2AalOmbNrx4des2qkIRK8u1aopBXuMDKsYs7Qp8Di0yKyFIgsAzUqd0Nrh5VZ
	 CXLBbFJPACoAu8DuEuD7yDUH7y2IKvEMgV1PyN2BFWFH9Tn+Fmh01wXa0US25q13nD
	 6MWdAEdC+TupA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 779BBC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167134148744.1954.11825828071184458137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f6ca568007b8f267214c733258fb14042db4e55d1c403e9d597739b5493c96
Date: Sun, 18 Dec 2022 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671341487
