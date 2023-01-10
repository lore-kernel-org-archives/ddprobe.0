Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D957617DB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C717C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673369487;
	bh=BswoaIsOrmjJeD2CtmnJmMnl8xehtDLpHFXGULTDgec=;
	h=To:Subject:From:Date:From;
	b=tn4AgqQMcLB0W4P0ZQuiPlORSDjX9XxsXhccSeP2elAfXCO3tJkhE+nTKSpv2xcLZ
	 3eH4fOqM3t581MWGVNsZFR9c+wlM3k5SAFrq0g464p5CuPZ0BsZsu/oRQUS6t7kPSy
	 jAMtNJhqqb4ZgzrKFaVf4F9X+lRYF1gJQS5cRx+T4F3soRUx2dUm+vpdUbiMEHafbK
	 gmI9y8S9zlvuajLDkdkhgWw7zCQZsVn//lvM/WlwftZWDUPL9I33mopD3LACyXNuTt
	 wZ3gGnRLA0QQ5X93+2/eZPGmPzHY3FIUyDiyhEnNcGYwoSUIp0p9T+M6RO2P8iMAFm
	 bo1f+707hk1zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B439C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167336948742.513.6469199814417507185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b8b2d722cf4fc0f675c9ecbfea8731f47ac8ff7c6d3c8587cba9c7908fccbe2
Date: Tue, 10 Jan 2023 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673369487
