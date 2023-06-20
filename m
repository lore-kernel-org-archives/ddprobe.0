Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50ED6101FA
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 11:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C155AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 11:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687261328;
	bh=n+4tqC9MNxliHT8U9Btnet3NsiSofY44lzroW3bEE7g=;
	h=To:Subject:From:Date:From;
	b=Raf6RMhxodgsqy9lhROYRHbBXdDIewkCMIH753r/76+ghddnPcZox6q1kPZBXdXPF
	 x4bRKL4xJ9xLcOqJxI6VlfDMcQi/cFw6GhG7hlhDHkOC0x7iZJ6SbMI9GRODKfrWJU
	 Z5JP8lQLn3ssQxl8Zteces45xy2fQ50SKIrGrbmT50L1dfyTiyNSs2kDoThVaHJok3
	 ArXdSObqRijHeWsWjTofUqKvyn+EoM/2sDF0e4cj88CcwKJanDc470r87ikIigZaQh
	 Peb4XPg2FIPwsO5dEz1HBrePkMK/t0tTxXojIviAeECFrjFh+FqIfbLAyFKdnHDZ/H
	 jZqOojJGRT5qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60A7EB64DB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 11:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168726132867.19514.2584559023208579931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19687d12f0eccb0010262a1381cbc9bafc80f2e87c83fb1628deb2d4786e23d4
Date: Tue, 20 Jun 2023 11:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687261328
