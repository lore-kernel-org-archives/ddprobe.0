Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5940220F00
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 08:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA62AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 08:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692779648;
	bh=DfnwsBS8G5E9bjhKowWpoUjIfM9Mle89mVFCQcnyhwY=;
	h=To:Subject:From:Date:From;
	b=iAi9ERAsnrDIUSku/25BRdGJetqTJtNrc51evbVsME1E2gCjpHI0F9zpexwAU9keZ
	 yvq8GCmsffT/ohQS9jmzCssVweN9+QxwtZDQwPM1EO/kMtwxOwtM1fQh0zCq3c9v4g
	 sYvc9m/oOHgIaBXdEnFGHS9MxvE6RplFKHP8fe+7SgQ9HXy3K+FehqC/RbO+8T4wPC
	 Oe/a/AfdPxSMD60Zo51Rd9cVLGgkdn2AjMGgnKc+OrTDC38kuKQmHcGTuB+QQvgRTC
	 FPQOR80Ah2n8Z1kw4aj2cnFt3k+SYrUocBG6077fSK6d0ZWedLLbdYJC3ylI7AaeXO
	 gFU3KpfQ9M07g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B849FEE4993
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 08:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169277964874.9881.18417075403105685026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73600648df50d17c38c8993cad8c571d49260baa9445e28fed55d8618023993d
Date: Wed, 23 Aug 2023 08:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692779648
