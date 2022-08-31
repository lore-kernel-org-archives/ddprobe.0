Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9958387
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 719DBC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661922653;
	bh=11eqh0+uoRL3SwL/G13b+Q6zrxeLuCWi6uJOjwYyMeE=;
	h=To:Subject:From:Date:From;
	b=VinU+YxU30cWd4I19DGRPOlVIZirA6oF+sY3EF1n7mEF17LkOPqxS2wDul0h/3n5b
	 LaknFsmGz/9OLOCPsZ1zpACUDnyl/iwr0lH/YXQlgWUmgwdPL3qc82gFGJ7EWsoh00
	 Ku3RA0/Kqnxa8yKT6fEh/MAOXWHl8Cxd1z8GDG74MTrD2q6HTcqPM5Wx291VM9yLUD
	 EP4Gba3ylgLLapdkjNIm8rAGMgcqcu+pxRtzKPPU2fcTSLsQdhE05hjmI1dpXqPCl2
	 /4kdYzfd9bJdciA3XTUN4bv/80tgWGPU2IRYWVZJi94OIuHhH8Na74r/dGFhU9O+5s
	 kKPBIXhfHL78g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5753AECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166192265334.6911.17430449404784041851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b585688efb4f31a9458804be196c4da001a46b5b1ae4f21776579a6218646b
Date: Wed, 31 Aug 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661922653
