Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F5E1850
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 21:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DA5C433C8
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 21:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693259048;
	bh=idmLj1+f8ViaMLW74qdicTJ07zziLWF3JCXw7673n3Y=;
	h=To:Subject:From:Date:From;
	b=owscPQojnl9Aw6NFNXNgDKoAN36n/MlVq2qDh9SThGhS6HWSILDNLC7K4G8WJ4ffs
	 n6ipv+EeUxfcWMm9jY4JzS9U+EXw1gVdkqvxc28Ug9nfovZbieZ/FYvDCC4rt+ZxLH
	 TgWrncqzNZvSOzM+Ny9AFbGyp+CjBnsY+rfE4QOTQti6WznO9rSyVH5wurmBtBeLlT
	 9Vf2WklKNdPxMMcshfb2zTCfcnaLzg0CjFcov/HepdkqyAPPTvT4Nv6sc316dP3Pab
	 ou+KaVS+k9Jx7rhxneTm6x40n8tKqYctjxY5tmjH1dQBwfcuO6kmron4dmcWloN3ot
	 5mKvECqhnvZAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF284C83F12
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 21:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169325904870.27088.16025258934884599920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe33099fd9b4c88c47ecf5ffdd09ef1c3729a2a8d6a54cf98c5583d43efd89a
Date: Mon, 28 Aug 2023 21:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693259048
