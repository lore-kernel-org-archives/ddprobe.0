Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E624B1368
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87BC9C433D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668848454;
	bh=iavOWQDJ1PPAancGTNtICuI/IeKocvaAvjrxq0FaHLI=;
	h=To:Subject:From:Date:From;
	b=eS5Qe+OACQsJsClheV7gzBpmOC5YswzVI+5bWimEoWW+YN72C9t9YLdRSSMz53EqA
	 B1Gd72nZ6voKNl+/MG9ahpv+Y9S+wrkJzWksxfR9LI5BJ2hZsJo06DWMfqXwRgPNiH
	 7evs9zmpcL+AxSNBISOcvhGgdnfWzoepQ+cRCyYZYwQBc19wbtozzEnwoniYKlDjLe
	 wp/HfxNd+Y1biIOGktP8X9kTcrSy9+zXVCjTgfXMMJbne0wjegyf0xmUpiuL8Azlb6
	 hR12Fghjb3pT5BXeM8nee8MDlx+9NfsiTZN5BNjM9isxJZ0CjFYrHW+DkBXiWUOcyY
	 ugLMI8Td42kLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65597C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166884845435.6569.15572302585605683584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41faa4e188802c84bf9e91f3985ee4fbf1af94028dade947d58cf160ed796f48
Date: Sat, 19 Nov 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668848454
