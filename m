Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120DCA48
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZIq9FlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A066C433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700268496;
	bh=J6xbq0vU+ofAVccnsLUYpc0n+qg4fJ26gXk2hda9xMA=;
	h=To:Subject:From:Date:From;
	b=qZIq9FlRUURBArzgFwmjhfaN4UN5Wsm9xHUukErcUqBmDes1YVL5Bsj0Y3uILd7nu
	 UPfOcj6Gj3hfH173AEnpi8eOwpTFjYYL0vsKwEngDIPAelYv5HLVmI+rGwlwvx54S7
	 NXE84rkJSMSfd3kMC4mOPzIncYRpBn20KeaaKxqJTErS2hnAeuNzm3qS4Tty62bWeg
	 16fd+nUSL01ROCdfDC1X1Rho7u3NRtT7YcPxyV+CcevDX4LSVyLu+cBueueydq8VB/
	 Lbbspvko03AlOoYdonYfFQnXCwVLOQfjpk8tt4l17JqtCsC+PjqD/cF1Vqdj6iTbpF
	 uV8igpUMNpH0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71A00C072A2
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170026849645.13525.1748089696618548482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28b6f6c6963c1ee0e5b6770bdc930bd27e0ee1b07b9987d02c7e7f1b949ed65
Date: Sat, 18 Nov 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700268496
