Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC2D35AC3B
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777503454; cv=none; b=Xix+ZJSXbzsxyLsvQk4Y4phHlNArnTRAGAzTPIQpzaaYfaA0g6hockmD90k7XKJ0WrCfXvU0ggzZUesccS0SWuNw/CszJgtVCKvFd9CfiwogTFAEiOzXCIT8x76NpYA1IRnP5qF7NLC78/Sh6hAu4+QqAA/+w2XWGzv8f3pLo+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777503454; c=relaxed/simple;
	bh=lqlkYRKFnTYyi6+P9ccPtmC6OHt1GeYvWuCePjMIwvE=;
	h=To:Subject:From:Message-Id:Date; b=VEMRToWZJgOM47I28tiwA55H290B1X6Tz4UiJJ3w3jfd7ludzyZPm47K8BUzIxvj6ZjZ9SAmyBT+8RnJC4qJckO7eSvV4oC7l0qdIFPPo5MrCxDuU34SbFHebqYiAX4NgGBxJ5p6P/B8Zbyln7yoDrOKGGoOkIUHIRxmoVpYG+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3o8TmTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3o8TmTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C03C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777503453;
	bh=lqlkYRKFnTYyi6+P9ccPtmC6OHt1GeYvWuCePjMIwvE=;
	h=To:Subject:From:Date:From;
	b=h3o8TmTuDxcxu5SZFuW23hYHa0jGe8lOM1MDUAdSMCNiDMSqX5BRRtFrFlyDqIeG2
	 E0qlRXUswxxhVWFRcTEXOXdOVLh/lhPDsUNkYWj7J7FkKDAoZHl5Hvhjlrg6rpdmi2
	 lqwqPYjjX9QIM7iNlGSZIf8edvUaPj9Xiz9alrphZFwgpN9IxH1bRgZ6ngDGEiYUIk
	 AnK56Lmzd7HfIxFgmhYo3qblza625mQllUojjQMksJLdqMoRtz+wzK1Ed6d2Cm5B24
	 g49zHlsi0OjTD4D+1dAUJ0eJaZRL9hoZ3YyA4eBucujcHDHSDVANesoauD9xNkBHIb
	 aUfkNuZZS37sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C59FF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177750345368.12502.10381151165884083290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc225554c91aa45e9e9115636589929d5ba832fd42b5ffc4a82bf547703f0f3e
Date: Wed, 29 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777503453
