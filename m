Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A34BA29
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 09:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB5DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 09:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676021585;
	bh=ok4FyZjGJdpXWzbMmqIfLWEsSgjY52yjTIkG/mlDv+4=;
	h=To:Subject:From:Date:From;
	b=ehkn6ZYHTMoEvkII9K7/8u3ixFtReyyIJTKVk3/inywugD/0aJ5mOqlzzCfYDXfbS
	 VvUWe4YGVksmU/U9/euAW0XnH3qY8pCaBoimrv/EmizEeiqntjTZmlvl3kHh6ZyIUM
	 4FK1EEiXixC3HaGqZN56bQ1TjZauQFt1YrOwcmjCg+rbv5EzAr68E26euLkPWkpJqn
	 6oOK4g16SaHi21j7VLbgTpOCIJxR5lErqcrC0Sv4MAsfbzRbP1ACJZDnu69/UcTW9U
	 SfjZzil4BgSt/P/pFu0RrZ5tvUB2f6ZsbK5wIXoHYrsZzwhd/gxjPpScf2zuyeadmg
	 Erd6x0KJqsA9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B798EC636CD
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 09:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167602158573.13267.18135853720190396051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214b713ebce8ab99a16c21bb8b66aeb97d92ce3e455deffe5866a00add25036e
Date: Fri, 10 Feb 2023 09:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676021585
