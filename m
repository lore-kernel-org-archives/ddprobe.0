Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467691108
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 08:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E395EC433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 08:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680942665;
	bh=BqAWJj/Emscw8HIugmKYoY2nyi4Fj1HpDK4fJGe3/gk=;
	h=To:Subject:From:Date:From;
	b=fuGFvHDAIVDaz8AdNdlyeTJjDBZszMFAKoodWFyFUBLB8jVoBElozDuUF/ubxTzB2
	 kZoq8S7mKIpWr9V4luv9DSpUSPftetgzZQDpV/W6YYnrAwly6I/uVRRCQ1bxBprVVi
	 a9/BjItSHMpskn1RkluVJ6jl29iUOeqebRQpqaw777fnT1edSb4ft3xYWpLNpLSgxS
	 BmKaKi7tgcpIJ4+1yuUf2Wd/9XwG0Pp+U/TyIpukGGNDMB19i4rpCta2hokCIKM5VX
	 gBLBhDCF73c6a97ztNF9q1KtAu9egJRt+sbNT+DcLqzTZH8P2sXtTCkgupfMg8N7Ez
	 ruNIXwbzP9nfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C9DC77B61
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 08:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168094266577.15767.14059671525096099763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7326260dcf7764c0f4623993d2a5af59ca1330858bbf876fd1283d0ea5fe015f
Date: Sat, 08 Apr 2023 08:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680942665
