Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03197BA51
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbsTwaYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79DDCC433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701620896;
	bh=wawBPZTqMaF33pvwPqssJ6XveiStwWuPRDb6XTPQj1Y=;
	h=To:Subject:From:Date:From;
	b=XbsTwaYOCK9SqUpWhsh2phm0JpHoTnkKitvH9Kp6llht+CmypdO3C8uOyufPkR/fr
	 FTwWyF0A4EmFEqyIhOwDd4gCM9HO62qE37hAUm5oXlHku6mRrgc3EGCFOtc4UJa5NO
	 wdzrCTy4J+aBmiIDHMt5sHqfS4ZAmdFD0exsT1OtGLP0WlUgoZiO9EE6AQ1LLSoZpl
	 FeKzZkkyQR6w8Kinzui3NGdWiVvFVj4hdkhWD/srxrK5nl+DjcIkRuE31qvvfXLz5H
	 q3izsjKMIT2GLAkRS+sLJltObyFSufXPDMlJsNlmw91DK+6M2+lnwSXQ2TQHRAMQWv
	 EbuQwTNBCnhQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D40BC4167B
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170162089637.25365.17341783643397414333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036963789d4c50ed5314a0e61125db1f5570a9a4efb9f7b61b7e466d78980e34
Date: Sun, 03 Dec 2023 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701620896
