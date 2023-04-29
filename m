Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDE81362
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 06:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF360C433D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 06:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682748305;
	bh=GjpX2TaeQPTLjTg6rfddXt1br8Ifz6K5drXk7QZdXLo=;
	h=To:Subject:From:Date:From;
	b=YGr/pYm3P8m/AeDBynm+c2x2trQPfGIbBlhI5f+xy/RhFmA3o6IIYmMFBYXebXYLp
	 VMidj0Up3I+vj95xkhuQjtZJOqtHdruO98kxGDkBohdXyfDWgbRmG8azeq/L/Vor/T
	 m5gGJ5XZ59WqG488LnbvtmCocPHjMIK/v3z/7hvje3dYjBlsRB4rxOV7rwe5Znz1VI
	 EVZhDeky665dlrvSjuavfsI8blujNm0RqVuHIDBGbNBLbw+KA2P6ipc2V3okZEYkFh
	 zdAEWyHsKQ7BEApnwuKQcRi9VsuabLRM2ETDnFEoiBuP6Lg49jYQldTs3+psZ7a7U1
	 pHZvaiRgQuGTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A10C77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 06:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168274830578.15840.6594464486763541744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c111742199b7f6c3c4e96ef74d6e46a9fedb8bdd8d85869e1d51ac3c6cf9d2
Date: Sat, 29 Apr 2023 06:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682748305
