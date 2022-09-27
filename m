Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1A2468E
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E14C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664295053;
	bh=5iTNYlMwlanVz/nMdl5LH871qEs2vpy40HV9IlUOQnw=;
	h=To:Subject:From:Date:From;
	b=VBGK3rrNdFsZikDNJ3B3bTQm8TSsGglpuDhEasU0MHVb7HGSC/D0OrYsb9bmUAc8F
	 ropCGNdZJIKaemIqmZ+yaOGaqC3eqzqvfq7x36vJKU10d6Ms0yjnVCX+CPClPbXth4
	 I43fLCWKfYWglwGhhPb5lY+zJoSh+X6PaewdfMimTjSu3N+tkC2m81P8LJe5EYIw8w
	 39U3JyBK/w07tmG+MpsnlUZXCq3JJWc1gM1W//ITNp6KhQX2YN+ldP53IsAVjUCBqP
	 Xre/FwcxobqV6vBx48nmgGP7SK3ZyX35qHAqq3wEqghoEFD1lzC3P9F67p5gHrxQAj
	 m5+r4D/Oun0dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DADC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166429505333.26771.6430637356063281044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ab9e7be5a1265b33af0090e31ab1e46b31572b2db2bb88de58fe7cfd4a378c
Date: Tue, 27 Sep 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664295053
