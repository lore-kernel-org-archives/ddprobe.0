Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C9217F3
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 16:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBB2BC433EF
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 16:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683562746;
	bh=DUW5lLRLRU1xEz/472K5XjD96wtFSu1uaSSvfn548L4=;
	h=To:Subject:From:Date:From;
	b=qDIPjH/KXKGXezPcILDMbhGaRar8mWKA2IJHvG+NZvDQ10DyE2RpgtzkbM7NBoJuA
	 s4dnpSotJn6xZKvHgIDGcAWhCw4rF0xTQKiNRObreJrBPbuS8tIWVlHePD1sV5li5W
	 LHmNazX1Ose4ssUt5eeZQ118885yiSvDnEvV0+Kj+4kKOWbNcYSzTlByZ2pJldhlBI
	 zs3ME3yEYgfcqR5SrujeH6AMI2lQ2x/YiVNEpfSwJmV/gQONnY595/BGuUNPsoVW9K
	 GqZ28UKJpKvjmOl0Bq7I6roQq2Rj/KhxpnafY6+kpK7E4nF/Ozj9UBPKUTPxtzU7ek
	 FK5S0iXj3Fmgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE624C77B7F
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 16:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168356274582.9861.7741412122684188410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b821b8a2dd7b0dd9d2a87a3d4c5387c3ea03093c137ea4fd652e5d9e19bd8cf8
Date: Mon, 08 May 2023 16:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683562745
