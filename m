Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5518ED7
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 863F2C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667540454;
	bh=hrhmfdOUbg5vkeypK6CdLM27ZbQ5FaCQHF0Jb6PRRLg=;
	h=To:Subject:From:Date:From;
	b=mcz8c+6u7Z5Z+KyVz6Uzkz4wia6M7kIGox3I7D8qwqjy+gVoeKfTS6nun9HaLIOVW
	 r+ehqpr3XmcQQoumVBnfGWqsSs3WGjM+PhTSASsha19z3Nb3wqQIPkfFpDAJi99PXi
	 82HcXtnGYJnKmWxF8mdoSy4Ob8ecP9Em1RCEKM9mFjojkD+z5HIQvH/LuaZP8hfLWf
	 t5M/nCPeCxOqQCVhCVORuDtoE6KBOtRRgfYzFuLjCh8jKaWj2nccLD5CNEPmYdmIBN
	 ClbPzABZuh1398WJa2AVnhmuK+t7GVPfcr+wSi1z7/Thxjkt5yZS0Sng4Y2cH6hcEk
	 MBD3qZ+DqbhwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69929C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166754045442.11512.6872513840247036218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df274e328b0fe842afec297b36b572d64d24f164005b6595be72c8f180450bf
Date: Fri, 04 Nov 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667540454
