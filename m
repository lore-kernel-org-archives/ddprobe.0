Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC087C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F80C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662600053;
	bh=IpGXfWxjJaroeIb8/9EsdrKN2BKNbLNBYA8zPqnPvgQ=;
	h=To:Subject:From:Date:From;
	b=fc0NFiHERD34CnVawvOCDL+qP871LtrnuSZ76CMprIWiXepNzDGuXKJVq39Vki4Dr
	 gb6/cOqZE1sLEgA8J12vcYV3zY9vixGPYKM1yfTLlKCQ2tsb4jNzMaYrTV9I/268Tu
	 IMAQyA7ENqD5Wwgc2LpdaILLFVsaQwuF3KPSuzXxHO1cLPx4clTp975idb2qiE0tjm
	 FmAK8NQy9T6kRt2ML60g4l1hnW/qJH9I68j+7Ld2pN+KlcmfptRiWHAGwkUAITp0Ie
	 KOL1nEYsKNIViG14uSIDKefEPa5vouA0knVpHkrTqj8UhYGsIMEwa7dXqVsL9zga0e
	 lSpGPUCDTxyow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57481ECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166260005335.25111.4434166358086481836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa910d5a3a92c8bb4872d4c3b730f6bb46ffea3eb03669f180c12dd26255d75
Date: Thu, 08 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662600053
