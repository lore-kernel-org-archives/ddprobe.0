Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34892BCF41
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757671795; cv=none; b=N/+xYWHW5VOH6G9H865+zFVNou3CWF3mpWMLDudvmb7aKD9Le1LAVVTB/DZbEJ5O4t+TLNVVf4aZtmJKuH5mkX5rHTMv2FKGPLOJ/td//eaNPMT9v4IXF8l6kYEHHaa6PCbYo1LffrXEhrn1P6KEFX3KiezqEhKbM/8G5k3U99Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757671795; c=relaxed/simple;
	bh=B3ivYPdSRD2o+j4gKdXiqEvKZLLVog/patw1befWLnE=;
	h=To:Subject:From:Message-Id:Date; b=gU+/acNL88Ufg6vhOS1iUBRV9REgtVsUekzd2yPZWHg65vZDqu92FTxIpSuxXQZNMG+IJtfdNfmvCw2bXEtLOvLznsQ7HzDmIJC8VCc98B80GpI1Z5TZj708bsU3NQgvGPHzTvooArQHMptnKQRpEkAsbzGpkgZVFt4y+FiWxDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KH1mtA5T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KH1mtA5T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DABEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757671793;
	bh=B3ivYPdSRD2o+j4gKdXiqEvKZLLVog/patw1befWLnE=;
	h=To:Subject:From:Date:From;
	b=KH1mtA5T/PXGOb7fzFVKLRrrzvSRkdZJJMoyRTrqPBKIzJdSwMBM0N0LoqEEHsxoi
	 NmD539qBUaHSw9aIxCQubTkvBfzbpXRfyEmuONLs0bH53Btd5GXlgcz0vek3QeBPxc
	 MYwGb0viFsN3JyTGJfLEXVwLNBYy0ZlWg6QOaCWxpMuncITvEfPRJ2mVoP8n9AOSnj
	 1a1x23MdVzzQfF1/zPTl3xWgSW675IQS1PIMEvPCmVs8WGt2KSDrTjgNChPMRhEVuG
	 mcaqor3VkDtpuqBfghmzHLCrUo230HfBRp6Yufz6rXMjWbAvkIRX/tkws8Y9F14Z92
	 N1RJnKAYvwArA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E587CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175767179357.7402.7320532240282239651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e44bbea8c359894089409731706cb7eb174ab6a70e3f713736ba1fddc8a493
Date: Fri, 12 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757671793
