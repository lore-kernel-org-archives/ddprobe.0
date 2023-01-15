Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1963EC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C212C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673770887;
	bh=xCFtDrSZvPNrhmsXis3o5Fde5y5cjzCahDLluPmeozs=;
	h=To:Subject:From:Date:From;
	b=LbcQmmDzfm2UGY3SJ1hXjXvdZkmOalqB5bYcZWHpeT+tKiyLA+0QopxcOxlxSY8+Q
	 Mo66rFvaROeCwOYl3KVMFQ0mMqBwZBSej76zqDG75WNS92q+oLcbT11EjV7lkNhyS8
	 gKF+RTYSWseakrUBVPZT6SkN5PYPkxBpuMbsazCfJ13tQUmMcz1sPy9MmbOahVWx6/
	 lo/eJnafQBbb5fPSJLYatyIZSwWcFxafpVgCjEx6O3muRfmfzCNTLxIjhuGHpUn5Jp
	 Q2qOG4XBsoZpV30hNyKzdSOgqv8qxBuG9z/tmAJPxFRZJK9/H9ezdYy+spmtLzojev
	 gkpFg5tiiS7oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E789C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167377088738.9238.2215363793316345942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7722183e8f0101e2b2849b424f6139711b63671fa5f701292729feb626e4632
Date: Sun, 15 Jan 2023 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673770887
