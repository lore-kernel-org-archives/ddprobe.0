Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEAF8C06
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 12:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B94C433C9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 12:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687176128;
	bh=MQ21FsU9zzB4HbJ2T44WIET5ndppMei4Eweb+52bfc0=;
	h=To:Subject:From:Date:From;
	b=pVPkLzO8Kz/07iFWXUbCbwtW8tIwNbPCUjEukbl5cnf1OqTUSoZxWtSWT/v4hkalu
	 su1HJCqt9mU8VdCWR0DFD6nR2iEwM1SCZYozozK1xqDd5xx2wzLUsuSOBo9ZGiAPgP
	 HeEkqCMshQe60N0KAO9bSv0N92/S7/FDJrf9xv+BPrZaX7rCPln0jDhkpsQT39gwdS
	 xgCuDACZp2Ss24CcJF9jnRObxMsyZ8Vrkf9r46GT+giWC3Z1vTixeAeR5YaUIcUBRk
	 iilOM3K0zZ2lRwF5VB/733Gg0AbScOVAoVh0C+xwsU5LWFuTREvAk/uD8rbGVV9Qet
	 5B0aF9XPzURpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C0FEB64DB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 12:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168717612868.23575.5359522143022355844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a95dd5435fe72d293ac25f82bea1483c38c10ea635941a0121c7e671b552c00
Date: Mon, 19 Jun 2023 12:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687176128
