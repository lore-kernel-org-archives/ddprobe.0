Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECDA19BC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAqUmIpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 954E2C433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697804896;
	bh=SBlN/N/7BWwVqR/geKD4RBI0Wz789Os3gJ9NOoCKC4Q=;
	h=To:Subject:From:Date:From;
	b=aAqUmIpcJi25gKKfNtnbCStNcxpwdSOcVoOa/A319hxNP1KzFcyug87NCbWycjzq5
	 3klU1r7r0HPpsgBN8zqTN1Lxzzn8/VPZYfsn+zOAXKgxTfph/lNkT2V+/059MzTXBu
	 eEfVvRgw6jy0qotGsFsIp1+vBiC9uJK2KjcFph2sBXKE4qLg615CtRx4qz4H75fOKf
	 NWGHr32pYD0cCpC0zxkP63WRvLN4ISOsqNY7HGu9wsq6Pw/kyeroQDiiXu26hQ5IJd
	 dexkeRbfXxSxtFtuZU+424hSA+kYWdBm2a1WtKqKABNCR1RReArMHAe4P0BqLkIUqE
	 fQZj9HNw+dDEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73E24CDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169780489646.13367.15174492182419596224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5531a5ebde2c7eec4250736ed749dc71e5475ec017154fc67c7d5f2ebc604a1c
Date: Fri, 20 Oct 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697804896
