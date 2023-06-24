Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE9937F9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 11:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DA9C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 11:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687606388;
	bh=EXezO/gVm2suOUU9z4bwAHcFmEd+QT8TQudtVgxmyIo=;
	h=To:Subject:From:Date:From;
	b=c8RXE6Gdk84gycAxymthTxjmTbxwcWK3M9LhPfN+00JYGsPmD2kJKVV4pRs+sDJi+
	 i3obuSRR/oq31FMcAKte5KRqJBO/5ytbe9PukKlSc4QLwdPhpN0RyeWEcej1COhifK
	 gUsunf1RCsMFYzka7tLI3TPMY5gMxwUeG2poignzmjjJsBCPCKM2Q6yy/zRDFkfwqU
	 YaIaM13oSkIs4ubT3UD7OAzIg0ZxUXJE8+wMKb6bKsTebru1fHwVpYG2pFP/gcRDYY
	 0F6VnKQApIHCU05gYQmjJp18ae4H1qxleJoS1T8eUS+hrSEC4KnTHbL3q1NcOAHcbT
	 lw8zT9IU346+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AB7EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 11:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168760638872.20697.16805674903919091894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd420f4a449b1d8afb19d3b413ab5fb038fb022aa47c5f28283c9bbd432dbb9
Date: Sat, 24 Jun 2023 11:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687606388
