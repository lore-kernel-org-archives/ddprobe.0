Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9453C1D
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 14:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F200CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 14:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682691246;
	bh=HnKRGOOM/EFZc1pI8QbhiIlTOVpf/9t5U2rZk+um8rQ=;
	h=To:Subject:From:Date:From;
	b=DvETkniN48vsiFr0V+CnQzAeg2zO2n5HQOwlwTELr8SRjA0XndVKFUKbHmWGe5XeZ
	 1oWPW03eRGMx4BWDMgrxJ5VlkuhAtGzM1V2iDtuJNOgBLrzctYTqMibVGOa/l9MUPI
	 ja22Gz/mMLRx6hSKScSV3if8/Q/Qt6KiaMRbfl20XJApkQDg1JLNIRBTfY0ApdkSFa
	 qrUKIM28B+OXiqarz2aya+UxJ39ivCeGsi/HM8VnjFEiLZOBaF9mtI9JN6+VW6gMjc
	 6fAsYWWbSqIyMs/mC68UvqiGoKenak+/hALGZJMkNGLUPNnIQFREfHuC2Zlc2sJn3v
	 vkTc/1LKa8T4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE707C77B61
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 14:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168269124583.28029.15056551051757980981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e972ebc1db10f7507b0ef1239ee08e4897b0429db36ea87a9eb276caa0b4ffd
Date: Fri, 28 Apr 2023 14:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682691245
