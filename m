Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9BB2564
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83542C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674026487;
	bh=Yoi15r65E/c2R2Ea3fP1wiYLRhNtQaVFFUAkyKau1nU=;
	h=To:Subject:From:Date:From;
	b=dC0P73o5lLY+jojGYBDPHCc+nCRrdyGPSKNBbrJnh7NUlvjLGkUp1++Qmc2+sPuNj
	 suNoCaE0CS8IdCghV8uGcoA/ZKyR4IorPXP23P2HMpYmUW0nQzaQswwAbX2tIRH92O
	 FZfLLUXWdQ9AUwZ9mrLGM6HOPIOkXmnwv2DbopJO3uaUjbjGG7QACFrKJLAgaNufPb
	 ZRFEmylIhwYNT2+Q7+VojY/e7IC//Bw3KJs8Qf8mLQFpFqO1DdKPkpBZr1mO08n8Y9
	 agDJomfHoydHzzpz1WsoUNd59CDHJgyd0RFJldamCLP/2y/6xD3Y/OcyDCOWfx51CZ
	 zvlerBH/htR/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63031C004D4
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167402648739.12396.5170005381567544183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0297979584e42639d89db5c04af58c6a4436c8e298f0429be00349d0f36d5488
Date: Wed, 18 Jan 2023 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674026487
