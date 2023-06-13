Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A84F7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 02:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45AFC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 02:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686624965;
	bh=foIVJMuMBM1nUfAvIqUi/Y1/87oFo5swlb3K86bSnek=;
	h=To:Subject:From:Date:From;
	b=WU5r56jTxvPc+D3ffAfaHnMJoZlLIXBzza1bkyGcX/cdNYwtZCn/E9d1j9/6S8I32
	 YPC2Tf/wCQj++dajmuDGdNBZm5NwUAAJiNaurEprGeaKVl5DxAnAn+ZJqTppacmHO4
	 83D3BCVSvoZwviCvmhkUUPtqUXN/UgMREkHZUA51YJ8oaR8moLVra9znUcyxvNV24o
	 BY4S75vVecjHRxVI1t1yZclG9c8fIuag2ok00LrAeeJtbaaPftRwMiIqS28yyQ1Qrl
	 xE9aSHkRMsp25Y6Ox/4zHbr78LtuQET2h1+YoNp8JztKFHtbQXME9XZ5NmomEiG907
	 W+nfUhhjngpOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38E1C7EE2F
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 02:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168662496572.8992.9157396333981168882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a16090813f70fd981866911fa832650e3b8a084d26817628822c7f27e07029
Date: Tue, 13 Jun 2023 02:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686624965
