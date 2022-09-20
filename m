Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A3B10EB
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D52EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663649453;
	bh=Sopi0gDKFbiFCKTkfhcYfR99U4rQTseXA5pCpXgRasU=;
	h=To:Subject:From:Date:From;
	b=Z0mHmk+zOyCAvrohwL/lT4tHH74JHje07fFYQV7VSegu/H4xtlmP9ae5vuh4wVogD
	 hP6Ydvyfl7KOqOBQMd5sMGWUEjrWt4cRat1pCwFvzIXkHqiGCHHi5FeCHi7kN2mNBG
	 dnMw5QHk3TdNXVqjbn5uD7YqWDVasjDsNkfrwYISnOusKrg8g/od4KYNXXNbiMNS50
	 EL9ZbLC1QipwxEVDCmX3bW3FuzzFdh/mpgZMOuTd1RmlE1rF527Ji8pg3d/b8bJ7RN
	 vMHIcOH/QmH64UHqyGYMUXDR/uXrxl5/0WBa1OU66/CPWGiO9pAdMCnrOD2e/Njgfp
	 58a0cZh/35ukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE46ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166364945331.19601.17546613727816355276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c229d1e9780bf8e5bc206b17bacd7e36c330bbd49d45ebf074e1dd222fce6b
Date: Tue, 20 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663649453
