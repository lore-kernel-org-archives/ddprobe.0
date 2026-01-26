Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9A732E743
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769423634; cv=none; b=iBrw/3QBOsamHqDSRKYBt9dAz4U1Bn3bsKvIUzpl8tceuLbPkGOS+OmL4ZzWw9OLuHerbfnFaPES9l+rkfuOhT6AUA80YVzH38s9Gs6hC6lZCDbRDvUHB5SVKxL3BzrCy2feEK4Z1utk+oLiN/Osd+Mz5vTik1uZo2yGcn9XJdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769423634; c=relaxed/simple;
	bh=TVQlxqN8aRQYJp2LfIHXC8Wk5tVV2R4Z3QddQVzH/Gc=;
	h=To:Subject:From:Message-Id:Date; b=iELuyA+Z44e+Jetl36amPJTjRDbXhjSF6TQVCi61vq2P4UjpYQdhHYC4nEVFcq1e5Kes9O/dMLTnspqkcPPXbsRPbuZH24GROWmSM56rXy0jQ1sllw428Y0u5nP4htfespAUCGHGlZbxrFhCfggOtO6KQ2KGYVq9IpVjeKSSugM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQEQ1XgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQEQ1XgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1EBC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769423633;
	bh=TVQlxqN8aRQYJp2LfIHXC8Wk5tVV2R4Z3QddQVzH/Gc=;
	h=To:Subject:From:Date:From;
	b=hQEQ1XgGd7Rav9RmoRCMuF8kK8anAw1QQmNNuHwvEjdZ3P5njJm1a/B8cW3vUvJ0B
	 PSbtYVXBXhPBqC00h+I58wMWThberexkVkJNafaarrAYOmqrMSm+xmLUBYdxSlM8aL
	 3H+sd0bg/yIbFaXBTVVrhfDvpHeWS9sr4pr9/c1yTq9EfwQ6yUx4xdWDOnTtXudwJj
	 RrKmPJ5j8LLELHSZBuQlji16mAYZniOL4cISrzDuFAVLxIdgL7DnJIdkAb/Yjdrvyb
	 +f7H3ediJmW0JvPPRZ2H3DrP0Uv97njxwrE7iwkijM5tHxyKe4qd+PZ0gt3Ax+oehq
	 hQ/uxLtW4z/rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F2CF65D9
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176942363357.11374.264362902837715848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc22a34bffb25a92e983368751d13903e4e7474aadb3ef523c970415c02df068
Date: Mon, 26 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769423633
