Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69BC51FD0
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 06:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5ACFC433C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 06:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691129588;
	bh=hre0w2Dz/1U+cFC/2Pyicw8Torc3dAVgncnMzQxFUs8=;
	h=To:Subject:From:Date:From;
	b=V2aZzEfRrYxu+5jJ8ew/Dx0cp9cxIFqFcy+KzVfcadcU8EhGTMUVYJIUyuz8hot80
	 KwtlfOdOqcDPow1yKx+DQEFQDyQITb19lr6iOLlQCwWsNegiYJdII7ErbtagdnfaWc
	 ftdUvHKEkgPO9yl+i3tkin2/onjyF3AeTktyojgCwkpu+zx3ZE5vkOkLk2vuK+PTkU
	 hr6c8TILDEaOYKoDEPBknCfW5y8cVMXvjORwXcGyua7t26vaV0mmTYK72i9RZFWQ5T
	 QNm17uuftmyXEJU2pD/o0unbEOUQcUK7XbOoSMrI/T71/FRaq1JKIRhUMxeejpokU5
	 6TWzkE4ijGaLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A775FC001DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 06:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169112958867.4276.15921751057751590891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f053d9749b5521c5830e38ee611155e0def9fcb3e56c62799997390792a07d35
Date: Fri, 04 Aug 2023 06:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691129588
