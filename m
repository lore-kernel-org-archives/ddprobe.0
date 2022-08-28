Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F7E17E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A827C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661670052;
	bh=CWuOw+86OW+q/Yxq3jt632EvzvJ+rwVh98u7ZebTlsY=;
	h=To:Subject:From:Date:From;
	b=Iop+zQWYsGMYSKKQkpctB53Daf4+ZJHc/5FHMUj79Xt/89PTszgaA3/geYTDy5W0W
	 aDoMp39PlXYZZgpZHbjU9XuxsECBOpqtJKhJDR1PHwjlpe2f849A4dBVGLL7hpqMVl
	 ee0lijZ5dr5eJwdVB/9VZ6KtBVrjXyRcE7gL6JadzBT19p4nokGhCGtTMhfmoxnGd5
	 fsKeur5n2i94ZFHpZm5uOX3KrtgJsB4P+k+srkwpCwJBO2TLPhzd7bO+dmUJAsr6VU
	 MKQVT3GJNpuHg9Kv0Z4Vq+hAtAK9r3sxkadH2EYCeUIFbPqjMjyG1hsxjDZhwF6Jch
	 NmBs5bWe5r7ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C242ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166167005234.10683.8485387628439993139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68138f4528ae190627b0b71bd7ab73bbbe7515ee6386d6c6131c21627b896381
Date: Sun, 28 Aug 2022 07:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661670052
