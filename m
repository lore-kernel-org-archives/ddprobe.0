Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1457E0
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 00:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DF1C433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 00:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676075045;
	bh=HpxLNikE6ae+FbyZVEuAaHjFVTpyCEFkliYe+FKH68o=;
	h=To:Subject:From:Date:From;
	b=AgKTvattKNX4hmaFPs1Mdkpo1s20KFDbIdy0Tz77SJoEH6WxpJZ7BZMUi+DvWcRHN
	 Y7AJ5LqTK/Vh0C7ZaYwyqPLmoN+bSFwyhJSbdtwcNDOhX2V5jwU+7lnF9DNpNM6Suz
	 J23R6Sr1IBks51RF3dR8USXDkHTaxsb3qI9f8MzjHyHR5Ec89LL7O6EKIOTzww+C1p
	 16Ig1EW6RjA8qrVV8L72FrLRoXR7h3qB5+8tE73zjwKfmGqwhp41ip+/r7w+NXR6Dg
	 DP37kuHSSGRXDZ4OJJeuoB9UCenzcfnp99eiCYxL+wY+wQZVnrnpNKjVMhbItCdbn0
	 YnKZTAabzNLBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75A1C05027
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 00:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167607504574.14345.13336210772015794364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9600272415c0c0c8d61df03ef023edf0a04ca683625a33f9f9a0bbb801754fc8
Date: Sat, 11 Feb 2023 00:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676075045
