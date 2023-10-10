Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCB3321A6
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 19:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHWGJLEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2CBC433C9
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 19:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696967228;
	bh=SreG/JArU3hKFIJLGCKS4Kaw2S0Mpz7wy6tjXREmYD8=;
	h=To:Subject:From:Date:From;
	b=vHWGJLEqlCmUkbX9VUKWuDcupY1oG3GGijX1jI9tZ18qc6OikCXBH/4HCsvQn6D8U
	 HG+RHZhSgKAueeSJ1BoaNlZumODXo5r9C3VTqrTZt//nphw5kmvJHAFzsm9l+yqNuh
	 sGKljROtCL4Ty3NC1Pp9xuPb3TGdo1+5hPO6nZXdfuXipTwiO/DsNrbmErUeQGhqjm
	 hXEalhMqtEPJ4C87y7BYbiu3e634v+pDBOBBC4Xj5rwwDKfxBgw3OQG7HcJ03KVpkD
	 BseG/jKPpheg2UCK2KTIL0cByM8Pb3I86SHQLtQW5Uy4Z248Oyps3R0MLt6xGkw99P
	 /y2z7izdCZLmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3410CD8CB5
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 19:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169696722872.31356.10065769820202098764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b22117bf1c80e75f8c1e64be246baeb5c78d5cb9c990b16879138922acee67
Date: Tue, 10 Oct 2023 19:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696967228
