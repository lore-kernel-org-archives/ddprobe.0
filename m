Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6F1374
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 749E2C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670383854;
	bh=HFsaYndqWrVUjWoGFYSb/oLrqn0wETq4OK3w/5tYPJk=;
	h=To:Subject:From:Date:From;
	b=lOoN9nAqgwWIsT+g0HerDtiH+Hr7IEDu0RbDTp0e1yjXyi9wr+koFY74UJIWppDkn
	 y1extWTOFNLQ8cnWMARIsSjqPlMU4eEJNHSa7J+CNL7TSHUa9JNgpM76nag1av/243
	 5WT56V519siXObQKkv5g6dhSOBSRvfucjQHER+SRorgeT1MRlyfI0GByK7wWSWbt6V
	 5O/n9/EEIYapImBjQJDUpMwdglWD8E0etbEL34HKKA3tCL7cvG4LffEyc3+qm7SJit
	 O7hl5z3A5Pb2E5KYOn5L+yy3PIjzdTFmxJSKnPw0ESX8J1V/53PDv1fhoiB/mDZ0e2
	 WV+BsSO27yzZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D23AC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167038385437.25458.9720757375200429002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc2aefe1ade6d5070664469cdf1a2b88aaf53d9292f56b6f6f6b88108c63c7e
Date: Wed, 07 Dec 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670383854
