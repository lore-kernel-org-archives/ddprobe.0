Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF54E5CBD
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 713C4C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665441653;
	bh=KW6Fp1pqx3B7+zMTasu3NxAT8EOXop/fnASIZ5dlFdI=;
	h=To:Subject:From:Date:From;
	b=aH2zFOTX8PIXoGFwoGrORrW+YwCnIcLSLzt5zK/mIHd5ytzWJeSpWt02OPFx1vph4
	 yXORR6zpNZXMTDbd2iOurkeptN5ootLl8rWGmS7tzzc+8FFScHgIaUJeo2H8oYpM9x
	 6HQeZ+bPukHkXjZNgVRUkH63X+k/KdvFIO3IPpxOWucAxmEzbsqEJeJrUkYlEmwCN7
	 ayeWf7xojIbzMbeo1r/3vyTMpRyzdf6lFONUTdJi3sOuEZvK7lr29joT+ON5KAwAFZ
	 KwhClrXPxb3I7jCVBBrDyZDjDu7I0+4txWGeZD5eCaGNNO5YVgGZmdBm3WSz+OvxCq
	 AaBtvQbGSnx8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 573F4C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166544165335.6389.11710532766871555617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd8142bf39726e5799920c4dafd4231a7b8b9522e7749de63e880ae56f9589c1
Date: Mon, 10 Oct 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665441653
