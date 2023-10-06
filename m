Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77078125C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 09:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+fNJo2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7771C433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 09:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696584428;
	bh=7n5J+gvo2X0nMqMK5LAJQC5wLLw169fcU0HWku40wm8=;
	h=To:Subject:From:Date:From;
	b=X+fNJo2Qsv6HLkP33vHhlvGWuRJuSYufAby1oxbHsCGOv8Wpj0AXNCJI6UulyiElS
	 TCaMuZsqCvPeI2ZTHAMTxhDyClDX+J0+uiFfWrusQisudtSNS22zIPGqHvqCOBME1x
	 oigQICxftRqdEW71/A7VtqyAKJcYbRLtZRu805R0612LTBz9BwhQsW37rs8mJ59icv
	 VoGBylvVlBHw3fxVKXKLC7P2TQrn1IoKfcSt17LhOVZSHbWOGiRCiOus/w6LddEwg9
	 QFGDqb8a+skqXhGc9HxNYx75NBrRCZ8DrNGkZ+Uw53RfPYXHBzPWwl3o/1BwpD9YbW
	 kcjPrLW68WACA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B868BE92FFA
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 09:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169658442874.23512.4928312490511770962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a12e3b4b9a75ad66dfd9d2d531e4774cdf3e7f478a1346fcf8de3a76eeba398
Date: Fri, 06 Oct 2023 09:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696584428
