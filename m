Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9D423A7
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7282AC43470
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664610653;
	bh=l6ybuy0BAUFecNx7ibTgkCMQHcxWkWuocQsNHC8K0rk=;
	h=To:Subject:From:Date:From;
	b=uG2B+1uDt/0LJxVgvSqcbvlW/J92IBENpKdaBHKlP5O91eMnzrlcGMpS/d7botncc
	 hUueV2ocidKyiRFUVJzQygbbJ9CN214roapnpgmMWHjVNRYFJMVn+5nnNLFX1BHmJn
	 J4ZWN0u1nKSNhX5waSH8OKmHqZasoJglPZU1Ic3STwF7XTkI+GzOIcoJf5cyRvKBf6
	 x2Sw+0r6djucwCCLJ9rRb2FK+KLAZCp3/JHR5VgHECwssaLTNjSNPtJkJbTecetJ2v
	 FMoX1Xyf0jL1Y/yRrg4VBCprMrq9Gt/ndL7gGVj4z5YkFHierxRsJCw3XSkFR/LVlK
	 4bO1OIv3EZj3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58753C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166461065335.31634.3107281443240773870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f43de479aeb4e4719b2a9d706c038b886e6d6835c46490b2f21306037868ca9
Date: Sat, 01 Oct 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664610653
