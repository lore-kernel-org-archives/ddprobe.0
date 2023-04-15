Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5A879E0
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 21:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0012FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 21:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681595106;
	bh=9TmujBZ2pzsygNzhRaeBG5FkuXsuZhagvbIrHFPzFVE=;
	h=To:Subject:From:Date:From;
	b=C8ZRzUDPdPKz9hi5Lw7USci3kRsdu2ubKH41sR0ll8nYAl38FdFirZuEWI2w4Fbnu
	 y5trkOSwl0omLDGQuVkBCKPc+tWFrOThF8bxKM4BSkEDAC95Up3hmdSSmA8T4tcEfK
	 G6qafdslAnhC5rFA//z1kRQ2RVA27Tk/If5ZkCDxZrzUG3e/KShX63ss1f4f0z9hy/
	 T99DigmBtYQKGYVdQbC9agFP7k/8kcROIJp57y+pEM0YnvlY6dWSbXSX4nlIFkx2fG
	 0SPuKW9CU2FuviEsnBlku3PJeP33uztr7Pe54ewUo66lq6o+IpgUbZZK+7NvG2cDqV
	 tZk+A+bKJMUQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1751C77B70
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 21:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168159510584.27665.5657054025496200616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 651769f65c16711ee0c53127999144a031a616d6019c8a91c15936875e617fef
Date: Sat, 15 Apr 2023 21:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681595105
