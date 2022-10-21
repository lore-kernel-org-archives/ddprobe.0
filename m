Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E0C7E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B130C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666315253;
	bh=Juzn1m21T5vJC+6BikI+lF204WzBAlwyZAKbLqeQ7sc=;
	h=To:Subject:From:Date:From;
	b=lB89tDAuh9Vv40oQVlJhJuBWvA6/M2ZO1WbLTvZqauXbVjdU4+K/dfIrggIguliMK
	 DOmw+WihFY65zL8SXubcqztweC7smha/ru6E/kgiGmmz5c++0e4dwVV4gwQSLASins
	 E3iwSgn6jafwpVByTb05xFzSSzSwyNyaRSx+SwDvuNIzph0Z3g4niRkSEwd7BJfOBk
	 ZbyXtNHJaX83f7ek0K7yKBPkbVDwlrOMYTO5O0t5fC/deJAACQxe4Py69CwLZwk6C5
	 jGS/lGf0h4/kBZU5uXw/eOk56HiDR3as4W0eqeirlFtmLZ+zMQhGNs9UEjxQ6mpSC2
	 b6XHgV519DrBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F35CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166631525331.25143.2454219394481132547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9d9ccd66dd5c70155c4319c51d5348f945fe1fe0a5affc670c0f0a9c2a2fee
Date: Fri, 21 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666315253
