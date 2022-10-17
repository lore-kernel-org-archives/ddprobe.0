Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7F3EA2
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 778EEC433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665972653;
	bh=AcrXNEy49vbX0xHbWOqWqvQazKHp0uKc7ovs/UEsAVE=;
	h=To:Subject:From:Date:From;
	b=Rd9hA4uMGDZ9d62db+lMMGa+RRy+iu/0TFTjCSlbmLqc1bFq/XFtnmPiPKWsYE9WN
	 CstXLIUpqWvWkzsmSNC1alz6z6410QQPO3aNm/FvJpjn9e/BJ/C8GwPqc+abNZYUbj
	 ZCR9lAymHMkmXIzSIDgsTcrP6CCDqi84Iz5pb9Ijv1rW9HWetw48Zn/27BPpTxp6M0
	 7kfgUL3BdiHkdrD+xj3KQfOPBJTIz9/Kor44gLtn53yF0VanfYmk0Fg8GMJRoljVnq
	 jEfnR3kUpd0qY42JrXezTGBS32lNBN+1KE6y6+q8pyp9nDhMtOe6nisNXEsHLyD4oU
	 cAc57AyO0HkMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AEFDC433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166597265335.26768.3348798017456779382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ab512bd6f8ea46093645e17eaa3d86155d7d9bce634a4ea00b98ebd03a55a0b
Date: Mon, 17 Oct 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665972653
