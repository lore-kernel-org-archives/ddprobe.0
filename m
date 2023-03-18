Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4452C9D
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 16:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0863DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 16:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679155326;
	bh=J+OLUlE/FXwZy6UeoAP5mcwLPO8RfKkPnX6avpOBX4I=;
	h=To:Subject:From:Date:From;
	b=ULgWHV6ziR+ztbBzTPUjjYza1JRyuGJ5TseTpbvG/tl2MN7td2N6yKYVGCXinnFnI
	 YoGioGN18G9+iGKM1e6YXoirdbPpuF8tkbLIKietTj+++RXmm/MkJxVIcfFCTOakWC
	 E1L/lBgqati4lorCgoAG5ogbO9o5fY6zYmHX8BP9cNvXs+HpEkZkaIs3eGrnrweo17
	 NCZSW3tK9wF+uBthYTNaRXhhw5UQYvkRCWs3dxEwz3Y7onPCO2WfsRUEyXnT1d8JMK
	 vFs+71Bh3bQwL+HDohuYXxrQ5qLmanFUwbTYAw8+kVaPeH5XJCyCgUC1AoAonsLDgn
	 CUKV9NnX8TfaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5A17C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 16:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167915532586.32185.17880083326703527486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c09cb82998497908d4fb38b5c20f7f0a76361c5608ff28dba609832159f873
Date: Sat, 18 Mar 2023 16:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679155325
