Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE997C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 761F9C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663797053;
	bh=J8s89tYJhKWytR2k60fqHohx6JeXJJKC4rMbTMm19QU=;
	h=To:Subject:From:Date:From;
	b=EGFQGSyuQLl9CmN/pUTT5gntsdY4w+CoXP/bvKcXIWxFXgkal0w46ZQKMtFKYxu95
	 NyFkZXrLEK1zMZxQWEkFFZUvnV1iyAUJd/nHWdeuszbTSmo9bZyVuNtE7Q8pRPGmtV
	 Gp5EwpddKVb4G/qQOQexz8PfQBQ2BzdW4jazwcvnoLIOHV3Wc6Oitl9WN+9LdiuuNW
	 rrTLFHZUCXcM+/Gft6QfJPpA3jdR0fGycRl8DaxORRTAfA2YNkmU8wMKMd9qFT7qAg
	 L3pO1sUkZfLqiwLf7o27g5YAzfMSu33qEKKF6Hdk3AFurrIY7PlLzB9iw3TXgia83+
	 NMArkFcEcJ+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E8FC32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166379705335.7116.8559833618568897116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88b63fbea8644550250e4dd9f4cf7fe630655310bb4e748abca30c395eeb96b
Date: Wed, 21 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663797053
