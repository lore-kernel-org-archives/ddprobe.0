Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235901FDD
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 11:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD04DC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 11:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677841565;
	bh=dTloe8IQw0bUquEYWV3lv8lZ1sTDRVY0jEFSiTLdpAY=;
	h=To:Subject:From:Date:From;
	b=UF0bQgHXtybD/jmkaqCnWJ9KluHZAEFeJNgDYHx+qsrkCledzTPmYl9TFdYNilR5b
	 AObgUSk6vc3BFf6FVjJRUdMLm3q9Rr7XmnM6GdkFyhJa9KfFXOVZUWLRybTm5MgrHm
	 Y7HU6I2NhwUeYi3F+wlpXsc2WRakvbc8IvxTQeUD6sP6IIJ+CGgFEOkPyIbgN/6/S2
	 ZUOqfDFTTC3jeR2GilDGwhMJA7jzjq8Kz6a5Bx+GJyQ6K64en+/swkxGDmJvQNXKOB
	 cvAjWTvN6NCKQjFKHC61JMZKUIItdFrThccEmGWJ/MsyPVjYnP+xK47VJwYvNsOJ0V
	 cd13TFwmGSEYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4014C64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 11:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167784156573.16319.13267692727077052884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec05db5abb8d14f41ac4f14a57b23993bee61123a3ae9c02038e644e2a85881
Date: Fri, 03 Mar 2023 11:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677841565
