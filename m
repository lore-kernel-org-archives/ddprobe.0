Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D2010F2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 03:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3945C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 03:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674791585;
	bh=H9FSkgvI+hexXDKf48vdwdMDXwRJExbD3YAcLItLPYA=;
	h=To:Subject:From:Date:From;
	b=C63YhwjanrOVfTiWBYuKp9lywbMleSmR5NNo1XfGK+K0YvmBmtQDOiOzmgoUxNurd
	 WaLjWYzJ07FryBM0G12ht0ikf/cIcA/OqrusHwIyq96nR2AwcdghyjyV8KWBySEobx
	 11FfzT2hZRvLBmEizBg+Y3ArmiEfycurxU3QNLe+99sSXAfuKO35Tv0wM/idFVo3uR
	 Yj65UQu0ib1ez4VKaPXNeuS5jhNKukSquIp2znqOyi4uX/Nuzc9/hOjBKdKtZAV97C
	 UYCxAUa7ooKodjR1pTAHtkF59rWAnEornAXmmk5paZFsZlxJsLSrFEDKhaw9PbNTwc
	 EHrnMbqqJtweA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DEBC54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 03:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167479158574.8682.14285535604316169816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712f8315e290e45d05b5d21ebb8b5c652ebcde7fadecb4ef0a815c570fee7722
Date: Fri, 27 Jan 2023 03:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674791585
