Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0A23212
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B72EC433D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667500854;
	bh=vmDE2bq2hrs6EgPTAPuarXOR5ZGeO4Qz1QzTELXsjio=;
	h=To:Subject:From:Date:From;
	b=jTNLPVBde8hOoI++334xgeai/K216kb25+YQrjscAyX/uY0iKukAWobdD8m1pDlO5
	 vaEzLaeIY+r2E3Qm+41VMYGbRjYfnInwq6jCHjarcZzJl2f4TiJALYubutARpyV7gw
	 S7s20kiDaLt1mMnn5hwfidrG4wwsYo8ZBxSjwal4C/B5aI8hYhrZgfYz2itfgjFD9y
	 8QlaBLGkRY4Y7/A1m6FgAya9LMhcR7Dwv8CZclAsFNO+t+auorAksyMLJzqgUwZ1lZ
	 fnHoSWpnWakd3sC215MdnDTxCmwsuY7z7WxuvmpZ4aL1EiBow7GQ4M+dkH7w3HKhUC
	 0JSWExNknZ8Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62702C433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166750085438.9309.9397901490202219051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0f88e8d8871f6b38ecc982f1cf9ce80221c88656592c977354d609506313ea
Date: Thu, 03 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667500854
