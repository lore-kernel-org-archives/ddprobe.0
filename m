Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25159D2F8
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 09:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3763C433EF
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 09:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685526245;
	bh=IJFy5E7U5+I6J9VvqRXCZ8+UiB0w0+z2nqe+xV7kcC4=;
	h=To:Subject:From:Date:From;
	b=aftMCgjvJLvccdjUZl7+SvcHeAkNocIpHdywjqF8ycQIVYvR8on28cuiCkwO17NMj
	 B57pLtBGgYtxDs2MX14956OfmyMu/0IzW4fnv8oxEFjx+MSzGI/PuT/gm/y/ATDiWs
	 OKq0HWmxX8XTr1nV3SvauXeTA0RdMQco4iG9y/m/Rg8M+07QewMmhK6R9kltgis6al
	 oCWI10rU7L0oCEJZCunD2Ckb4DB4VBHmFbufBJC14eQr2V2KKc1so1pjg1cBKVwmkQ
	 kZxgHvIe2b0NJ/yITyZ+84sCMfg9+499ftwGL+X2WvKffiEEjCznY7MihrGCfmKUzM
	 AoX3uih9qwC1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B833DC7EE24
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 09:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168552624574.25709.1248798184777168065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be238c8d380b5e0d0bbe1a4ce94eaf73a5473fdeb4c1c8adfb795aa740e95de1
Date: Wed, 31 May 2023 09:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685526245
