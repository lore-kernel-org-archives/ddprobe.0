Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76BA317F8
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 18:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA534C433C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 18:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692554648;
	bh=u0TGrht7EzUfdMkwh50JsKbsB39nf81xyHvahdsDYhY=;
	h=To:Subject:From:Date:From;
	b=bO2eUs1UCEQEVC03IRSy8taRawj4gcbfSBiOVO+jKn9t7Y498zyfSTPf5clde1Sri
	 jFgDZBXSCUrcAA0NiTSsh0GEttqgJ8mirFj5Fk+fzRJMH+MzLgH1NTwl0PHOpD1WBj
	 sKkRmFV8UyLMFhNxFAkVZQRV4wE8FsJol7DX0YRuswm1D3IVbZ6kzUWzQ40OD8FdSz
	 4Npw2FMPH6q72dV/mx85VpLmtT6nDq9HHo4GjBFT3NCBmOqmXFoEoq6ayeECa7HMXq
	 AQMXIvRz0x1aTmJg/m25u0hxLFQMltn35CE/uWM9UuApkTJwPqBc4EvoAQk9IoTHtd
	 ANRXrcgF8ZDgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF94EE49A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 18:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169255464868.28981.4096728127453430758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0a20b5201e37ac0d496b9c439de45ec016b8946f450e97d6deb9b4aec0a05c
Date: Sun, 20 Aug 2023 18:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692554648
