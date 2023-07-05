Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BD41156F7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 23:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F66C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 23:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688600828;
	bh=tk5Cz578x/igGu9u/ibci99p5sNbEHgFfXPdtGxfS1g=;
	h=To:Subject:From:Date:From;
	b=k164O+HatNe6khUjkoOcVaKWGboYEYGI58+81U9Qv8a5DwiGRF8X2wLpTKvGbwitm
	 vNkeH0n5RA76H9RhRyHz8Y94TeCZNw65Hr0dSwBMR6aGqAjJtKs8GxZZrowFZ7SvzR
	 xpKqFcgtTgaevb7/TWuKUEtjNis0qpl3I69wUte2ctegqLZKY3jXQgQUU65icNb/NF
	 hG+oaJvSS+njKF00DMI3/pytbPP1DRLTp/0LQqH3SYlHjouFNMELnC5aM62l4xcDJG
	 kbj7atmbQrtW5UkF0kXU4lx4LxIu1OB0+f3NjbexqBgNrxXAuJLi6UKpuFlB2u6dib
	 PEUowZPvqk7Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B350DEB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 23:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168860082872.6017.6945726736263044512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d484ee1f03e4f961ecf22b128896d582a44150a3449317f2e8bd76420d64dceb
Date: Wed, 05 Jul 2023 23:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688600828
