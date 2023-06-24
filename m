Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75B2C524D
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 12:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BC4C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 12:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687609388;
	bh=NcS1anbZWtSQGdvw/PAUfK8wD3OXH1zX5TH1MQzuFkU=;
	h=To:Subject:From:Date:From;
	b=Geh2qO008mqagnJz6SY5YacpF6e6AizCBHSB3niOXiWxLFTUEOKDEoHqAwmaJjmWA
	 Rk73DKs5axRZSOV1kANnfNhsQbfIawSbOiaAd8PH2HoZj/3J1N1YdUQTeTZ1TztZ3O
	 ZPJ/c9W/wE7CNgyFFfOWrimkL2ei+BpyktYe7NkuVCfxVfylZnZ0us/wH/5Il9qMAF
	 dklJQwSKh0eVnPlIXbP70Ic3SAtTquK0I+wA3+dRcP8PStPOzRtVxQg5UrMKSLwD7i
	 HCrh1Ejj5Fu3yMCnTYmCa6hGa53q5Jf9DiwC8hIxrCEwTvcuGV6iTU9bWC1vYILZjG
	 2/6l0ZRIlrXTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AB6EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 12:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168760938873.22690.3729357880425576953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b19806a14fa5a48a3a9d53e19ef3aafa687d971ec0bd25ec524d2bb4f4b8760
Date: Sat, 24 Jun 2023 12:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687609388
