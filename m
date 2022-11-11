Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D909E36B
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76881C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668148254;
	bh=E9oNCAzeZWyWTfiZsxO/zlHX4qO+Y1FX7rsyu7eQtxg=;
	h=To:Subject:From:Date:From;
	b=K3jZuxtVRtuvpvNFM9b3dGl5K7rwdvBcjoXOKr9Z5D0LrHndx9zxzaqEr77/5g6dA
	 Bau7MSWgUNcTJ/qj3+G5OEjTTzkzewxWG3mgIdrNMb7ipmW9Pl1xfv8goDxpOHuo2q
	 DoAooAe4QZGF0+C3SHV8l8EVdbUoQnJHcomcM5zwim7pfqo8NN8a6xWF//WCSPJ3yu
	 ThaaBvJY043wUZTiGBsU0wl45vlZ+f/c/JKyx0K5hs1AKdFFYvNg7CtYX9W2rbU/n1
	 kSIk7quUS90PhST69SzdRv3mycexRRGphU6aeZT8wr999YliN/X3U0zWSH8jPHNq0n
	 q00bu7tiUAd1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5886FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166814825435.11758.2689424222896685380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a7557621c58dde933444140b3a8535a5eaacbeaad68caf99c9a6934a77176ab
Date: Fri, 11 Nov 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668148254
