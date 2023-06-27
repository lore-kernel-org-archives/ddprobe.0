Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69748EA1
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60F7C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687838588;
	bh=maQgmgaSbdZRK2egKVTcwHFL2Y3vygyc5fLHwpD+RXA=;
	h=To:Subject:From:Date:From;
	b=C6AaZFGB6ZjhsB4t0jpFeTILbz604Ll0H6nsvmNCu38i18qWx+W+/OuYLw8k01Vch
	 J5Ui5iekcfJQiFrMAtK2xYXq+drsDxiKasbQmUuvOv0JEV89xPASCDobLvdufAB/5h
	 rQbGsaeuxlR8qgfxe/vs2NEB/6agqqG4TXxBI0CA5orcGVYe63i5cg9XSweeyoiza3
	 tuODcyrcEGacX5wiHCtiHoNAiyjolXt1kcYpgumXocxYSRzr6fehp6E4tE+1XV2Ot9
	 prtceDo+A1oFFBl1HHNDBo9ssTdWM4jCuAh15CYd1WLMgGT7OJsVxdA3Juqkl+kPrY
	 WBYY1OZXT6Z0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA440EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168783858875.19438.3800438013589867224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc084cd8472f3f41879ec4c7ad3134b2630db29d31b37ca2c178c7ef1ff6766a
Date: Tue, 27 Jun 2023 04:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687838588
