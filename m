Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03BA936094
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mn+9QaDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 804D9C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704494896;
	bh=aENfOreSV26Z22Pqnd82eZdqsfd+NXTfRGn4kr7BhlE=;
	h=To:Subject:From:Date:From;
	b=mn+9QaDqk3Z/3ooquHbJ/gtDwTl3VM9BfQlCefxVdgs9BJIMnhmOmZmOcAwznDFqy
	 nx4wJXD+yUFD1ghT1zNAHhUsIqnAfReKMls6f+dKaLAKnFqYhF0ihenuu0SpZ8voEc
	 HKbNzHNJctQr60Dqpjd/NszWDKl4SvTIw3t0pWhigRKJ0v0XGH3hr9qwQKloHyD9KP
	 ILV8PLb2+cFAxFuQ4jyoTlNmK/jUEqEsKt0GT34IN3FzYAoTcSzf2qFwRiz6v7GrsK
	 wjzFnLCi8FRAjYpZ/lGNvNSQGjBya18a1N14OoclQk9D9ap8WCONfA+UMKvrTN+Ew4
	 e8bqYyCsD13Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D65C3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170449489639.9357.660726764651608435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9047f3d065029b31ff44ab3f5ceb9b2f8f075d37d43187a34d86dacba9d68268
Date: Fri, 05 Jan 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704494896
