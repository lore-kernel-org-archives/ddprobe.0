Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D31317C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 01:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0833C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 01:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688954228;
	bh=4CXvPuBKPM6UvzQQfyFaVTK4FRsHZE+mDsns7sSznqw=;
	h=To:Subject:From:Date:From;
	b=rwKfnqxew/L79UMApAeOb96tRW+AzyH3lQfQF+Gquo1I3YRbiXjQCgQjDOdaIDnxK
	 yFFQmKaTGV17cm2qqiDzDuDk8Y4lU59QgCht8OCYITe6tdHSBMtrSB9Q4Zx6igCoXU
	 H1xg8mCMqom0eijl65JhJRdLxq2q+hK7eysuYgFBkSvHHH8mRBeE6/+rt6r3gB+Nol
	 DtJxFJ6OO3mM5mP92HPYs4t9T0fsO35vcT4o5JfLeGboxgFXXexHa79Gspa+GoMSYc
	 pyPD0LKJlohz+vh9GhX5Nh4Ay4w0cyMCrn615WSRkVGtpxPGPqyYmxaYGykKV2D74I
	 hUXvlRzHrls9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE28DEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 01:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168895422868.21205.17556059700406176507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80035acb1c907a014e8a2d6b8f0a467a2d1a0379ec7bb6cdf5e07207bf6c33b
Date: Mon, 10 Jul 2023 01:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688954228
