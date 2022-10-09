Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80551389
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D067C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665286853;
	bh=ZmhQvTsWqByoXgvTBlyOhlEm1fX2n2pg1rCAC1EutD0=;
	h=To:Subject:From:Date:From;
	b=jxDZiLN7tTACuEwgJ89ACV+PkPnCaSFki0jrFJI8EotUPZejpTj9fCcHhMJ7hLeIJ
	 C4Z+XXjgwt3M6vc5h+0aQDuk68SxIT7TCg8EjJz1T0O2D6bmbLXPTVCRh7ptgGsxWR
	 wibua6yESKVxCDmSYJzqbxyr7gy3v0XHV5UOmyv7oO7TgIKoJuJKHGtwF9d4ih1qEG
	 1fi/K2yOTtHw5u45usEKrjyF5kmdr57wuuPTXNESHq+M9w/e/aWoekOYrlcbHE25EU
	 72TCNLDPXNzK6rW4r7KuH4YqGP6ZNEsUH7PLqp2zjOM+3KQzIyHqQrU9UZiuqrFEwJ
	 iY1FibM+odAkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DCF9C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166528685337.1430.10035941971616977487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1035238f5be9518b6fb74afd7b269f74b09c70a5825365bd6d50189e8a85ad8
Date: Sun, 09 Oct 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665286853
