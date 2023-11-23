Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDB03FB3F
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/WAbcTf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 811CFC433C8
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700759296;
	bh=77Hq2YfQd9ma6vVimZW10Iszf0SkYysHbboo/xyDuNc=;
	h=To:Subject:From:Date:From;
	b=d/WAbcTf04z7D6ITAqbj66F2XAXUNfu6zIv38npVRWMoWnxn4QkWVEYSKXJ03aWA6
	 9PHfYjo1jn6WUH+TDnVyvWv7T8qpbuUX1l/Z9S1y3J+AjCtuQZsJ09iClDyDZbuzXa
	 5WhxW40cgwa0bVuvyhtMbP5O6+xENc76B2a6iLKNjcZOsGundzM7RE08AeFvSkUidK
	 OMFOn+VAENVgLR/9H0c5qgqBhreeXm1ueGFBIqiinxWRmE/jIbuP4q8hq80VPyeZAu
	 k9UVRhZD0HqqsxpVxP73jRr+WL/ZbwCDm6LPA85igacG8ksKbk4xHLtuuoNxqwXrEU
	 bWKravu1g/Jbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6468AC5AD4C
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170075929640.13584.1576754241133110221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7569fc87a0570384a172efea10f8e02b3f80eab0b095f487f71588beb31daed
Date: Thu, 23 Nov 2023 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700759296
