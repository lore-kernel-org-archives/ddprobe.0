Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4C32581
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 14:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5931C433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 14:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682950745;
	bh=mSnoa7vo+wDu2JcNqGXLxZ8DSOiFarHncqK1er0XroQ=;
	h=To:Subject:From:Date:From;
	b=QSr/SiNQ22TMgYyJHGBqBydiqh6B7yJ/wpx6Zk842lb88zGJ9Fcur9bOQJXNZpV9K
	 L072arTzII5ZF3PWpDtLoGBRh1u0yTcIG4VSGyIBHV1qyLxW2Ds2XusBotWiThPVZJ
	 FAzWXV6V32rKThOfUTIgfqyi5qAP2u3iZnLxHtJdIkZOub3JSDyuW3gGHgwjpg7g0X
	 xq/nAzmtXCeNIb/QuPP8qWxDkuATrPCQEz6VHUgQQK3nqyzP47aeVb9/X+83guUAiX
	 3QRl41lr7WheEwsOp2EnBQ4uC8sbl6d3A1IVgNzUBe00Mda7kazqFEMDOJqplHKe7/
	 KGwAocvU0YZCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DBDC77B61
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 14:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168295074578.24200.6891807294607538446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3432dbe51320aabc32c347e47e1d823ba1601d2ced9facddf0b60ca399a4642
Date: Mon, 01 May 2023 14:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682950745
