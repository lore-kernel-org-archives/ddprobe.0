Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D28C3C460
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 20:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716668063; cv=none; b=huzeWQTYzwayAQAuOz+EA41M8/VCalhX4ogw3sGibgIZydkfD6cKo7SBP+PffSoZbsdBajvCDWRPZA+zKcgTxNzixvPE3q/Ujb+u5K+1Y3dnXb+zg/7gTyeFEhS6EGzjGFrp0jY0W3uqQpN15EmjnXodcXohX4clc1Ao7d3qXec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716668063; c=relaxed/simple;
	bh=jEJLm3U7yNYE/i1ztMrWM1OlKNqK7MDCaQOt6PVyoHc=;
	h=To:Subject:From:Message-Id:Date; b=h7elBD4vjXjzsRgVZTeBSudVfGyo7RBcbRudurBdIw0M4new1iBarK3tCR7XrQ6sZTXHpHkJuesx7/VmS2ItJXV74olk/GIGJoOF73XWxQyC1OzLLaSMG8R0ONzkfU9xvibZmhZguUaCBJGDur/VJoJl7sLB4D+wSubmnlYAtTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVEP4PXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVEP4PXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E41B6C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 20:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716668062;
	bh=jEJLm3U7yNYE/i1ztMrWM1OlKNqK7MDCaQOt6PVyoHc=;
	h=To:Subject:From:Date:From;
	b=CVEP4PXjSlJuZDgOjHE0Xdpws6a9bjdwmnJ/Hg1PfZvZa2d39P9j2ZMf7tIeaiM2l
	 drKltt9zUoOZhICl+2lPhh75A4AfsQwargrzV8Vh/1e/hrG4YITjQD6HdHwQxDwYYK
	 6r0oPFdAiPhBZdY5EhvFZsMnT41k2BjhrEewTpH5OeTnpTTMVrQz7MtUQ1YiTcZ96w
	 zpVqcbcMq7zrI9RjRrAICOKyD7VjbjWWfTEL6s7ARH1n36ggVtcWl8quPkcvd4H5KZ
	 CrpGgQgZrXxWaWv5AZnMOzWfKYJgY4HUQv3JhG/C8lBlckZKz7QlO0kHEOtjyddbRi
	 xrIpTpge8VriQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBBA2C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 20:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171666806281.27383.4707046361025774303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb5f861388fe16ddb9f8c54c25ecc3d1e14cf44810ed26b330760e1d8450be70
Date: Sat, 25 May 2024 20:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716668062
