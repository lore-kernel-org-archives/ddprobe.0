Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563701FA0
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 17:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FBEC433C7
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 17:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691257388;
	bh=RUZa3C1E+I55KJgVaAIGiMsjFv2RI+EjGd1nLOlCWYs=;
	h=To:Subject:From:Date:From;
	b=twCQylm9+Yl+UzsnwY7bv5PIIlc5Ulgamv+if+iXTCIbhUafr+zsKD5TNheahVGrs
	 FojUvHfD05eELLmXOUk1cPrKHtEyC5Ku/neoWqsU3vuncHnJ6ryzxBwowGdTPcVduq
	 n8S8wkqAByc44nWApqb9PH40TPNOA12lsHlir1u/P9LjwjZUyjsnmT9c9sajBNhDDC
	 VmpqwGG6VnRaK86gfjor32YlkHoWBTywnOlsOnltnWluG+cOSaqeLV94dTOfwkcW1k
	 z2KVKnC9gpiZQ2OTiRNZnKLCjAB6g/hgrZJVlXt+Z5Esw8SE2aGymP6mccSLEx8oHI
	 wCly2Z9815OjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A59BFC001DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 17:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169125738866.3624.13554552198718902304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaab2701d79bab4062f919e9e91a4d6537220951b3d4f5547a1dc4a8c30a0214
Date: Sat, 05 Aug 2023 17:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691257388
