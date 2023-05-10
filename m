Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47775634
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 03:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF6C0C433D2
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 03:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683688266;
	bh=fPuoOF5PNOgy/NPSpP9WwCXKhAByJ9flhqb32WnI8yw=;
	h=To:Subject:From:Date:From;
	b=lnJ+RePjDgfHJPnvg7+/7kohy94fCfcP/BOrONk810iNrIKcUsYW+EaAVYkwdd+oo
	 /H/yq7cv43wi2wnzNb4+cksj2yau4LFVbbPAMUTPQfllg9Cu+kSFgNDOsYXjRkCtET
	 lQ1ZjwG2WP291yCWCNsedVVkTX2VuPd9oHVFrJsysWtJwnVIZHuq48iGQFbXI267vZ
	 uBnGcWZKauHj/AO4Zd2jSstwIyqxIFcdYCz5JyzmBCm4OD/L+GS7fBIhaEPgh0yt8x
	 +WKlkWZPcaNYvHm1MpiRkmRfE0zV0JUlY4w11SNi1fk58cGYCn+kZUuXOOacJm3ddU
	 3vV9Nv+SwEsqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3D0AC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 03:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168368826582.29626.11111319880067387261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68002803f7a72696209d0d5b1849cd7f402ea9d94b2466238b97d94b3a7e9ef
Date: Wed, 10 May 2023 03:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683688265
