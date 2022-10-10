Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D169F1FD9
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B67AC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665382253;
	bh=LspX5cpxHojYrZhlCJyu5jMy7LeAg89x8ITr/TeZ+hk=;
	h=To:Subject:From:Date:From;
	b=arBeqGgi/IHdWJLLGdatBzpl9Id9RIUZM0RITBJgeMsslcIX66E4Lj+veVDnm0+Vz
	 usJXJTd9VzzJuhsCOT/SfhCUlzx5uk0b7xUAbgemeoxvu8PMcD8CuZnHV1f6FnwB5E
	 fdFXhCCg/o1PvjtMWPlaBmn0z8GNYes+6Thk+wdEzXB6fZlo7RbO5dgkkz+6f7lmLF
	 gaOosYAJXSASquMqCRJyjFxRtFtFugrrngYKn6An9shbs3bGRCvhDkxYYeTc9kKSkd
	 bfro2FBq/vFS6D0ViW6TkxQqYGIsvDbWIBqBDIMFU7aC6dURPj3zl91EMuMFWinnov
	 l3OWlqbboFfVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509FDC433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166538225332.20863.13968467504568748619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2fe47b8e45f3f4b5bccc15a02300657afc889bf80b04985b3368256961f228a
Date: Mon, 10 Oct 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665382253
