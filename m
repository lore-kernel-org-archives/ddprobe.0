Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F7314F7D
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 11:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XN+ce8Aa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBF2DC433C7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 11:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697716693;
	bh=4R/kmGZJyg5ruYcehhuootEOEV7rhvUy5zyog6WmxXg=;
	h=To:Subject:From:Date:From;
	b=XN+ce8Aaz98UxthRStAeJhbpnGkAvNMlKCnYlh5hSb3Cn3tbqvS/jTjgnQBWODo2L
	 NBcOAtU5Xo73ePOBqBLILxpD+fXBE/3e09lMEFHrfEiFXDru9JPL384d4rqN00RNaW
	 HRu6sfnBPSlrNAmx+ysj/s4GeadHg19FsiLSr002zB2jNjPMRAMC/AeEmFvLiWuEoz
	 rGZArv7PwlF5TRFHvWroT8U1x32Y19Sp7jvDNZK9h8ihpoNAWb1kIOKq94QfRs0EEC
	 EZDCGBHsXKGswiZmQDbsFBGRyAMkoNj/7dvVrMUXBfFxQMPAJc/BJtEEObfxWYzHqY
	 kbmKkzxIAAuNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D01D3CDB482
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 11:58:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169771669284.24167.11380027862173466782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4671e323cd31e12695797b12b5b747e2ddabb128f609ee3f2c0db4c1e7f92c38
Date: Thu, 19 Oct 2023 11:58:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697716692
