Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA581B7EA
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 07:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2693C433C8
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 07:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691566988;
	bh=IzlQRJt3hpiEecB4MxFkHoZmIxIgaHzgSN/HfIegL3A=;
	h=To:Subject:From:Date:From;
	b=OrbqAxzzQkhjuoLCW3VH/2tlDomVKxRCuwMl1V0XgKKJoDAw+HWsZHD8i3z4TnbTu
	 ghRbmF20dvOEYmlJcpUGY8fOfS91PeRB74fzajrtlsyGiWtEOra7DXrqTgi9uZEOG+
	 rvB+6hIgLLXsMjHVSmLvdYAjvHiSRtKdC5QkE+jW8Yc3QdIhyRuRAsVMOT93uTJxZx
	 S2Ao44gWpH8T1YlfF0kc1If0qnAWBRqrcHj4XEJQGvsnIwTVccSScl3OrUI9dR4FTk
	 iFs7qHYanoTKNZ2WDZUoerIdLTC1qe6wiwgPwBsXcTnMz8bEAE22I0X2rhrosvylbc
	 qssJL1zRNKUVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B677EEB64DD
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 07:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169156698873.23373.3952273065340237262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb75528210cabdebf4545b72fd5776f775c6e5ad3253fece9b39f14740a9342
Date: Wed, 09 Aug 2023 07:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691566988
