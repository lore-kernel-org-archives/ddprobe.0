Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E722125D0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766770434; cv=none; b=NH/fQNtFOcZ2+YkvhqJmGyKKOdhRux/tdfXynewtDd3oBUGlp1J2es1sVSk4OVwayP2XvQE0I84JOqVU+hZtJ8fUWmruKWXjVGFGfCDd6LBkuovRR2umMrViyLns4rxDXJj9KLLIHWWzvF4oHOUjc5ppcRCS0N3Bv9HMye0iACo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766770434; c=relaxed/simple;
	bh=JfmRfM89ip18NG3haAT5L9Dht1Fmdf2teFLSA+A8TNw=;
	h=To:Subject:From:Message-Id:Date; b=oxe8s0KnIjOUFmmJdTIwr9zrenSWHcv/Z1DeKzoYi/VCh+e5I4mCf0r0VRZS1MZHFf1Rch0oc7z+BcyWUjzmdVtIpbk1RndZ2sMcc1pCImWiTd7NKud2P4ip35/s1l0Ik8IFkDKGvwwDyWVq3U0tlx0O+hR1gXLSEQWiOwpOfx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4bOvxA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4bOvxA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A9AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766770433;
	bh=JfmRfM89ip18NG3haAT5L9Dht1Fmdf2teFLSA+A8TNw=;
	h=To:Subject:From:Date:From;
	b=Y4bOvxA8njYPIJ57vkYpZVBFO9hE8/PfV3JQP1peYojRJ5wGqjGJmvnSrq1JrhdDx
	 lsh5ucvdhclqbn1kDceL10TdogZydBxGzV1XzAaQNJUaZ9kxMqDWGE4AC+2gXKovC4
	 z6zXN3jNjx1IvC2O5IsiXR4XeR5vOSE8Md23deL0OwlZLxDWNxEvcy/VfQTYy7RAyz
	 OBZdIWYXysuPKxl9mvGw1SDPEZmQ+dEvbZ6PRNTNvu8LGBUGp272EAcdPaAFaTIpAS
	 feIo4h6bbgMx1Xs/4UedG4qYpJ9kSWT41lPxi5m2kLQKQPsXiCIexdez6+hmh+vcE0
	 Y+PHyLiKkAx9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915EEE8FDA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176677043358.3886.857497177696942434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35273a0d08102cfa194e5dd227acbf2c6da69ab684e77b4e2dcbb18570e9a5a9
Date: Fri, 26 Dec 2025 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766770433
