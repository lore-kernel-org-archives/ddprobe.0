Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 728F429A8
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 17:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17413C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 17:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682270466;
	bh=jbHF82NsZppY6znkiuCf8/xVN0aKvHiVboyLgfxXLHc=;
	h=To:Subject:From:Date:From;
	b=T4uJ/ndioeNspoWmnLwmDVEkHJa/217dosFAboBJ0UZJlm1GQb3pxE/JcS41+seua
	 g6wdZtvYAiHIeNrCpFI0q+b+2WAndkTq+zMPfoIQqM19weTnhsavQCYR5Hq67xfwF1
	 Px6cfedNDAldrU73HllCXBlrxWIn7EVKcgPKuycp5/F+v7qHtDaa4Wy7lleI74WS7c
	 TWBLubXUXOX7mDafNDhvt1gg5UztwuEHLqlCbjyMmfCnL7AMYXPMw3+YzdUBcqJL/I
	 8VAchplZo7f021wea8+f3SS9OtcTiinlbTPhoJKo8+vZMZwZDsSXMQrnoGRSDG64Y9
	 ohpuFezBNPwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E695CC6FD18
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 17:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168227046590.28654.5689300714544270559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8add51716a7745eb55b851b625354d4b7df48610837c8527d72cda81ff6151a5
Date: Sun, 23 Apr 2023 17:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682270465
