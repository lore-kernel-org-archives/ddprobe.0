Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5058D1FA6
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 18:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0D8AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 18:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684695126;
	bh=1VtrGWE94fCtXhYRYs4xv3EZPRcVE+GD+9Zo/LZLmuM=;
	h=To:Subject:From:Date:From;
	b=XKRS40UAIqhn97lbrvtYDFws+6xHRsAVtmzRUks5r6TjmMm9WjUSXHvNMrNQ5kcFN
	 y9Goq22zXxpfCIg9V1jspYw4ocMtKsg5TSsSURXwv3K2yIQN+0hL73xiZmAUO3+Tut
	 IWRC3dZWrEsntqqBvRb5/bKgALIb6xGNV30rVseC6B2dBtkm413ap/h/QqPuJKybyU
	 HjoMgvZWFY0fRTA7OZokofGHncXCgEIj1zyFd9oRp7OoOr9TNh1/R+I8h/O06TnUdl
	 7Jh+diDEFtB2/bvfSTEGcEWMAsaCqlqLRbDFxWvRAdvUXHCeM65dSec6pAPnoGzFvm
	 dBvYdsulXVjjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D055AC77B7C
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 18:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168469512580.28249.9884893851721810374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f11cf4aae8cd4ff5d0d452892c17136a6a99a06b3ca0930993148b9e6cb9d30b
Date: Sun, 21 May 2023 18:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684695125
