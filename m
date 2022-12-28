Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A196D24
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8960CC433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672257687;
	bh=o4+G7EPvnPDjK1EjqRosP16EH4Mi7lANcQFuCLrfSSE=;
	h=To:Subject:From:Date:From;
	b=mS/64pMIIzO/+05MT0w/e9aTYEwmmLucqoEGtdSVBypWbZjeLNAeO2Y4BYQMFrI+y
	 d8Yb+4u4nub8/cRv/aukCLCL7R0iIHm7RGoLJ/c9PypIwqG3JV8fwSa9Giwxh8cFq9
	 qY1qcKETL3NA24a7qsExBc3jUzMs5N3+GTEmJrvzaN34UaHjPfxDdrYWLvt933gHKU
	 pPz1kQ1ou/kbJ3cBImCvwVbGD/TdE/jifXP6TskytJxETbWlotbqeMJJMy5GgeSb9g
	 Ko1ffN/1D4T5xTOiU8fCqhIZ7Czo2jE9pjESp2H35mTgwwPfb39mXYkAaRubHI8GS5
	 qoQYFD/oPFlSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66238C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167225768740.2000.1757385063124674843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca74e22479115999f51113d05a706c9fa35cc1a86bad322648263de1ad634bbc
Date: Wed, 28 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672257687
