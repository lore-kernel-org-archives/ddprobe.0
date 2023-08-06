Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AC223CD
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 11:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE61BC433C7
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 11:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691319788;
	bh=77gWfLjJMoJNAaNyjUI0oDqzDj/HhYIQlWw8ga14ZBc=;
	h=To:Subject:From:Date:From;
	b=qtRjUrx+x7+xSxIwhd+ZYS5Rm4h6Y1dn5L5eO8lEeyMAmNEvGn97CD2WuhWtDKOy0
	 vdEb0hOFldTF13s5zPweAlQB871z65uPe+uyyrBz0iV7d7jSxq9nfiosm6dtRIcfbv
	 vVoGjRvaGoVZLJFa0Q+M1hQ3O6skkJPcSwvxe0pLgA+/PqkMBGVwpk9E8yo0EfoYTE
	 15BW5UIcIoxAvG+EIvfclNIyg2reUUPlwL+Vcj6ZsWs7QDJDweVy0pPfTWSAc4kdBo
	 IE3ECwqLG0pgTnLUm1d4xtVmyFg/E5pcOKTei+PZx9bPcD/SG0uqkQs3rgGaKnvaay
	 vnBNo7BciLMaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD796C0015E
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 11:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169131978868.16950.7455294754293946983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19fa52d53cc7dea9f84b6b23dc3c98d8fd5dcd2966bafe8d4ea8ad2b2502b220
Date: Sun, 06 Aug 2023 11:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691319788
