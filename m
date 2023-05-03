Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EF51109
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 09:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95DCC433D2
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 09:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683107345;
	bh=oea+J70jaERgEHXUwqAcJwKVho3iJ2hVyMXZUkSsolk=;
	h=To:Subject:From:Date:From;
	b=RuDC+XzuO4Ws/6y+gwOJv023ZKdco+GWHxLAXTd0Wr5XIhFDS8MT+ro2gDI4D/OTW
	 GQmrdIsFWIb0YmyeRCmtD6GwifPkti9aSjokLcokLjbS+pZfCCPVFP/Mr0yha0KUsn
	 7iF7406s4jX6g4rm74rSh4BRur/qYVMBi46USJ6Z8gxuZeGxRA36tuoqcFskZM2Pdc
	 Sz2/MuBTh/leq/TTWcLOSp7Mzqn/iq+9uz5Nr7jqLMb2xraxGcJV38E/ZjqTadU5HT
	 ut8D4XKNz0fijSgvlPeZVDylGE4me5mueHRipCzzTW5hXaLVnv8PWn3r4QEmPJRtrq
	 67bre+p/3LF0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB2AC77B7F
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 09:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168310734576.32186.14165391305118391888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c93e0c70e48eb1e16c8aa02ee0e2489c8f51589d66fae4b647936094aef4bce
Date: Wed, 03 May 2023 09:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683107345
