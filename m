Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C26EAD32
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 20:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14340C433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 20:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678999806;
	bh=BsgMQEklHIRcaJ/fly979sJumCzEBIHcqTyKQKyMkCw=;
	h=To:Subject:From:Date:From;
	b=Jbbl+Dm29U0XEZVwd7emt/JPtduYdBVt8B3BdjyHJ65hTLgpa3Vmmb1IqOIRmAQ9w
	 O4DL3D7bTOC2LP8zxR9P9ZK1b1Bu7zKLfr6fPsd2/B8d8kEYfaCumJSXoCSoWJeMRL
	 NP7QRIni2TcMjq4oTY6EG/kC3xFShTye9Nmw2JoeReBEa76G2tgtNbnpAzL16a8UzJ
	 SjnXh5v25Jq15pg5Dtx1LC3AHD9+wN+Uw7/4Ch1ybedCftHCwYSHL2H/PHHbC5YwAL
	 1Dn2cetiazGpPuVjwpywdqqMmFZ0wCOY7WvqvpDk/DNweozkzIEw01ZXvB+NnHutCT
	 XJSq/cfMXoC1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDE7FC7618A
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 20:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167899980588.18240.2026853768090446176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b57b32238cc024b9fa4cb6c30ceabf89f8b10e2f5c41dfbfc0e66575389cebc
Date: Thu, 16 Mar 2023 20:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678999805
