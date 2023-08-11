Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EE58468
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 20:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9617C433CA
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 20:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691785388;
	bh=XjrSTDn9mQs1/w32e6GNSQy+8c+xgKCdQDiIypuUxK0=;
	h=To:Subject:From:Date:From;
	b=QCFltsFdBqWK3WjXUlylSMSQ2Z/im3RNy9BPKjp5cCED7s9V/FpuyK7wAKf8+9a+n
	 dzX6p+cPolf9PU1W7q6TOo3DTqN+mYgPhfn6ctS3pl+6Q+dlnSk1kLT/BLYDtfnSXV
	 6BvGb++mqT1pr3jjiy+Ww1s2bfG70OzJgulaZDjtwzP4fYVQovp86xEiQq+Lt5MP7W
	 D0LVeeikCrlKuLF8hDmwp81CkiI70501ipKft9QEbiOxLvvDm8eaFJvOsBs0oCfvC6
	 58VEQXLwXdgf5GGzrpE/bcsi2j0jDJiG84CFeV7/amod89vXLNZ59APWLC224O2ZDe
	 9XjlZ7BVBC8hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACBFC0015E
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 20:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169178538869.2750.4391868569981400671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc365253735ff783c82967d4bb3b416aed0d633001531cdd438c312bd6e88944
Date: Fri, 11 Aug 2023 20:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691785388
