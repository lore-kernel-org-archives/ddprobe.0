Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3346163D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 19:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7040C433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 19:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679166125;
	bh=7A2ZOfcrVKYEYstcmW4Nqhk/Sc/LdHfzZ8iK+sinLOU=;
	h=To:Subject:From:Date:From;
	b=mQItnabFQtJV7NjEdHUS9mkV3GYJaYw7cpitILmci5eOBhxQBTxWxnnKzCGrSDM5M
	 fkybUKoAFD9mnZ1ZSyehrLYc3IY8pDXi9vPlDxiR2Uv0MlMLpoKkiVrvavG44HX/8A
	 xpk2jTp5nbgyNUhFjq7Hlol3q9JpoXiOwlK5+dAaEJibmaByuByC5kgH8HkuaIUiyN
	 5oBSZNQC0Rt3yzh9RAbXs2yNk6pyeCtd2CeWWSru6HIn9H4FNfl0rEDpFr5ZgiMKdk
	 QRUcS/iwefJibJkvS+Dg62yiNMNV3azYqcwBhaKPINg4A6Sx3zfFvbpyOSpwYD+bZE
	 B1iR42WxQtfqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B771BC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 19:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167916612574.30521.8970188880839320083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a93d8fac882b314af2c63c4da3a5bee4bce694284d2a4e583a782b2552245896
Date: Sat, 18 Mar 2023 19:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679166125
