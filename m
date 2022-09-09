Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8DFA4C62
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CEFDC433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662740453;
	bh=eCEslXSNvl2z3Xdg1XoFKkJ0Aqaak/TnVRrXwyCbUQE=;
	h=To:Subject:From:Date:From;
	b=rtJ2qhDQSxRwAwrCL8TjERuBD/MZLw5RYYk8Mdfbm9K9IQuHvtCxd+1bBIewXx+jb
	 jhKXUBtfO8GlWWAtrPXpf0v1afQeU/rNunMxHWt/z4os72lSwEYiq7iSSHr5RbJVR3
	 ltSmm2hvhSFsrurEzxrFJskUWTS/P9Tc3Hajz+l98V9RaBkaRDR8XvLg5P4B60HVdE
	 xm51VwbPGQCK+zYSKM3lq9vEUg8R0X/N81DOUl3bNGdxIkz76NHttaLrYzY9JtRpS7
	 I8PePInS6/VTwU2ElbBWZBIQP1PTR0NFFTbFs+Nkyc3Op9sVh5+Ok97bvVJVKRMeEX
	 dEzgvNDy3YqCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547D7ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166274045333.23746.6956023683959724714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539e024319ad056b93b3abd1b046722d8cfd4368cb4391a7c7f6bb2b7589faac
Date: Fri, 09 Sep 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662740453
