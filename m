Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661A028EE
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 19:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E86C433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 19:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688324708;
	bh=kGkVchr5NSxc2CrvetK2b32YLMrOz0oCrPXuuHiphc0=;
	h=To:Subject:From:Date:From;
	b=kxkVPurqYMKhhK5WOCacsm44basZVV0hJNzJaTx6iG/4zWfcZJyFOLv97iC2m29Hu
	 9h4Xvg0eSka/TlD61tpN6sOzZ4tCEfxgW8fj0Imo1PQdiQuQcfBnd6Fjf4YIbBbVA0
	 YTnaKTZ1mf+nEvV896T1AqQXyJDM3T8vTBp1ECu86yQ6qDuYOVxoB8G+Cwj8gh0X8s
	 Z0KJ/2rBxUeOUP/LnDrZhPPpBxLs0bZBLVfWNKZBdqu45UwHN+cdIBx+A9TuY0iuAJ
	 AF7aY6yITJfYpUjBLnk3QZqG+csxWGeNGO3ANFeF7RVp1JY3JYiX/sc/ZGROwCSO4Q
	 Napc2yEi08TQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78FAEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 19:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168832470871.403.9436801937603011668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7afc399087648c862c3e8e638553aaca8260e5e406b1c5c0044d6f7f3a5fb97b
Date: Sun, 02 Jul 2023 19:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688324708
