Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6126DA930
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 09:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8CB2C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 09:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687945988;
	bh=VokzmVZju/TpHzbT+PoUcE8o/Qm6dpfwfz5KxALXZFM=;
	h=To:Subject:From:Date:From;
	b=m6p0Gtzv65BzHLESk/jkauc92TTGMADI5frTjcD5lAODsILSy/1nawqHnpTlZjdtU
	 crFDLBnztzIYovnUBQgP9a3M2DCBslbG5qmFghoffVPwQbVGWc3/HOC/IE7ZBwiYO+
	 rX/nvBMxTLDsZDBzUr2O4OnWD8Owa/Sovxv8qsLJbsKysnedOQ/pmNC3K9/JSJ17yk
	 qEft/vuG4hyZyNJjdzaqez9t6tSvzOFrBQbBeVeNuY29JHQdiRJA1Dnjhjtv3xEYvC
	 wZWkIZQW5gJsHM+nuUyLwLOPZMK8yREr4PYra9LWfUgmVg1ka1ZlBxk5pZjBpeEbAM
	 BsA0VjsfbOBvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB7C3EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 09:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168794598875.32327.9592065278347072419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07eb5eb9d35810e4751d5469f33efbf3a7e33f04066883f398f984602418d062
Date: Wed, 28 Jun 2023 09:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687945988
