Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9DD3C2D
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7CFC433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673219487;
	bh=xT6PRSAW6UKtt37w0Lkz+ZV0zyqDY+MLGGaVdRx/sV8=;
	h=To:Subject:From:Date:From;
	b=QrlJa3zMbjevM7nRdcQLGLhb1pvHDaz0pIcZBKx8lfj9P0Hp0QPQImbBFaM11PMVo
	 k6bGqqd5VXl0Em/j06bacZkH5ZHL6u1rf9oZDNrrJVED2KcLwOsEYxZcsUuM3p9stV
	 /sT/pF31J/uJW5OHEKGVVKExLSejUXM197kR/pW1k1TvJmAl5Hcg0py/xjG3LcXZlU
	 qB5QCrChWKFJqMavTSDLE4enXWXn8pSIPNaL1k7vutfyeMNrks+A3dLEndaWmz8clh
	 Ymvn+Kaa37UtXk2U/VDxHUQgGT+HhfcG1pVYzH7R6aF8PrCMFmKNiNxs0Z8r3GZ6Kd
	 l0g2Fouli7AiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E425C54EBC
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167321948763.10796.8682272400681684349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ee893fa5a4ee9f0d85eec61d161b7d7f1fe6b846b3d9620c6fb2298ab53ea13
Date: Sun, 08 Jan 2023 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673219487
