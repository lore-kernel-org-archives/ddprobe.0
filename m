Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5874B136A
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 07:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC286C433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 07:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688283248;
	bh=Ug8TMlJXcGFVZP6D+HrUGjQQpF+NIwwb/nPcMm5KGhI=;
	h=To:Subject:From:Date:From;
	b=IY21slByaUvSHOlxl8bqXt30qhZRZ7+FaKZxA2k9KPHio/7b+fp9qOK0ZvJFscLIU
	 8PbCitC7bfvZeZx3ySvXEK9yttIvjBV/1vENKhhDygXgNTfYGInQQ3MDKOC+0DbZLL
	 PI7gIqHVC52r5Pb+dfoFdMd0nR5AIhhX6sfmQlCPqNVwnBM1fbemHtQVniq/eBm0yV
	 oMHcIofz4LOXO/ZVdv0GfstGw7Rg9sfWCSaZq9aSm9etwnVO0UylqOl2j8dOScNFCQ
	 VhN0iGX9vg8gqN+vz0YM83IciVaR7v8nR/tJS2bNrN6S2oplT02fqizntcpn0C5luo
	 wQjtIw4+rxCHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF99EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 07:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168828324869.19834.8626884144736511158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f8fccbfe9639fe64e2cd158d231211078cbd7169630ee20fd522129efbdd9ca
Date: Sun, 02 Jul 2023 07:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688283248
