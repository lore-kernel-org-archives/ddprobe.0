Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456EF656
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 16:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E27DBC433D2
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 16:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683821045;
	bh=HH/7GvawN9F3Z4EjCqUx5SpDCPMmAWurHwJW5ArnVtQ=;
	h=To:Subject:From:Date:From;
	b=eBx/ZIuJ/d6fIVRipcTPDfmN/MtIqV3dgMTBGCE1HsKTpLE3/V8w3xkdxgr5Mze27
	 nhnAMJz45s8c7/PY/vPaEe5Gz8N8Bak96ru5aMbHsj9xQV+8TEhLh8vT+PvtdjKDuw
	 Ost7v78/h7lgGE3cu3nXAQdtGvL9Q281bbGEJazjrJXrkIl0nZl0cz3nvF3RwnTRao
	 ptBV7Dc9YByuhVQ++7MAsp0sbo/KS+C9zM3cUsd9MxOtCXXx69aghjktB6HVAh8ukS
	 t4MZS9ehyRdLkshLcWzcktr3NG7RyWg2/ZPl8zxX4nlAT0Pyr5cVPHSNCJpqUOAMhy
	 fUsdqKdgPwiyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C94B1C77B7C
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 16:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168382104581.8215.16960967761765207725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd9c9ae3a1cb4f3d6e54dadf01c6f4e5a8fe975df6266fd8af3b4ca662d259d
Date: Thu, 11 May 2023 16:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683821045
