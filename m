Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78361110
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E3FBC433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668337854;
	bh=Mvtc2hmTauilGdIzZqdqBb7pxnEy4mywWwPxTyAzvWY=;
	h=To:Subject:From:Date:From;
	b=EAFIVwZ7Zje/UoSuc4AbduDHS80cJAc2s9SUVHl+DbQqfInjKG0FiedJY8gD5BQ/W
	 u+766gmRtd2mmM/sOidf4u5NNPjv63KQvNQYmtvhuGDAJ/XZz80s/D2i1v4uuDsAPI
	 Qku4urrkqKAsk6Le/A6Ji8BsER1v4Mz983D2dFIeo7fzOR4P7IfOws/Fek7AVDs0WB
	 jyF/EQEUMCkZIyHl5MKEZp5bFYFcUSqvVTT+wkv118KPsIfmUpE1NUb7rbdhpKdb+c
	 6tFMnNFU+BYtKzHSq48Ic8S05kj0ca7fkcZ0VHY7A8ZP+t8QbQaJKBKFcQK36YmhYv
	 3mkW+L5dFCvoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B4ADC433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166833785436.7023.280880968728487357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8acfd2d7f609c4aedc93e0b4a988674b59e6b4d1728fbd43866310d56623c6
Date: Sun, 13 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668337854
