Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E6E53A5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F352C433D7
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664472653;
	bh=/+kwE/g7CJDtAbKwVe7dQX+k+/SmQG9GuuENp3WVk5Q=;
	h=To:Subject:From:Date:From;
	b=btvxaUPXU4btOdnLxNBlIsjvtHXB0tZlPWFOchq65lbcNxZjxqy1slZQ3gxjpM8+f
	 yyDnQQ9DxaFMlftKJlqVS2Bv0eR7Xa4weHVSHDbqHAEhZX07ad8pZa4pYar1vSVnw3
	 zczMlLrjQPkGGDV7qZPc9ieWP/QLb9u6Hz3xItjJWdh5Ha++FQ/SzgGjOfe77F9U7K
	 DIAJfLoMzttbBNKmxH2pUOohz96gLpZ2z8lJ5wZTt8MvfN6Aair7mQ+cgr3PVKmoFg
	 NhelTornZADUOS3/pJQOyfuJ4dVcWducOLqor1qvlZJWA3lhwtUOwvSm4S97zSWqVL
	 uco7bY/UDWmyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54CCCC433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166447265333.2927.18345398831226553473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f0db0f490d57d56b5b1860f85b4f2e8eba0e300c110ab3bfeadfc062b3c720
Date: Thu, 29 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664472653
