Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A191FC9
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70F87C433D7
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666152653;
	bh=EH/MUSE9aILMVQhDpKmCKCR8g0jWIUVV8IP0vdIeFbg=;
	h=To:Subject:From:Date:From;
	b=SvoOeEa+YmL+AxAfx5ttlNf+SaxGUfxA77d2Uex6KqB0f/tEu9CCbgtQDg8Ctut5N
	 Sxvo7sHV9QzEdUzqJkco+NPKD8B6JJhNN68WzIajRzp+aUZ7si47hjjfLxGK1reUfY
	 p/jHODne3BOBKNPaWv/wXOEJhM/qhaqoOLUbheO+ZW8QCUifjVfwWrwYVucxRLhSWm
	 Az0Sb6vEkhQl01GACgxtPbBdeQbtf8G9aj0MkeCjqOYtI24odS1nFcTiUCfem5NArN
	 vE/Bm4pFNJDwCt/1bifnbHbypluk0vSS86c+OhlGkmK/OLufCwifx0v7CUj4iTUGxs
	 Bz4UJzj21haSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5771DC433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166615265332.9899.13759058478036059812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1299c2f6d3b351adc280fe391e21d40343e3f4dd2edb2f060bf7e7c73136e888
Date: Wed, 19 Oct 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666152653
