Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC65681A
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA69C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661963453;
	bh=APe3KOGNg/iVaaqMMqj0OcyTdeLkVnauoMku5cArUP0=;
	h=To:Subject:From:Date:From;
	b=FtFugSYlV+zEebhkACZ+F9bPFu4jkCEQ4MwR6jbouNlWT4lLeGCcjg0KDN9GGcnxJ
	 0Ve6F1Ww2tOPndsA3QNyBLn/fABP9t3kDacDY6JA9pg7LSlefGXMqC0lWa6S0bdThP
	 IfUxsPfceDeWBlWfSqtsWFlGF0dYm210Z2MfZTFr857TRXuUdw832uYI7NdhyT+eP3
	 ZEu9e0cSxgJD/lNvrHdPkpQXEQ9FqEpdNaR1mbbarNve2GLB2mjdKrQGY7Z2aCOo5/
	 iSntQXMnHDob2cNdDIiC/dPaSuKhO+eW/DqvPZi5pqvmG1cz+LTTSWqrleuit/DJUy
	 FgyKfuYwleX/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542D6ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166196345333.1926.14106053349092649336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d543ac2459c48640e9711218c7a7e08befaf4142e4134cafadbc400f222a318
Date: Wed, 31 Aug 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661963453
