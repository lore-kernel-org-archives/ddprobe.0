Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9182F27
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73470C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662504653;
	bh=/gB2NEm75RxdaVu+tgeevJmLR+YIUfNTTWbljI4t6KU=;
	h=To:Subject:From:Date:From;
	b=bItPEjjoCH3Gz6g1eVKrvpB/1U2A24UDbYQs+NUykKTqaMVwXU6N16ybxbOgyrs9M
	 92auBNxmmVqDhI+u0++i6IbfknkSu+Gpx4CwhPvu8qyu8MCbpyTi4Zi4SYQU4B5U/F
	 2wy3FBGYZqmhEEf1Gi3ZQZWIowXDWL7XcbrTK7RzPFhZkUXDSmkxTLlKEjedxBZ0jl
	 59XMUSwj0Xci+bl5xmWZoLOAzTzNPuptVEgl5Imz0bIM2RpOTe9SSR2S8ZFGUkfBtE
	 cKLMCmYDMPAvjNDlyi2vOpIbepS7kMSZbh1Ywi6Vf8R/k21GLatyOYSJSLLiBRNPL0
	 AZOAdb9n1JeHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58EE7ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166250465333.21911.4986079070016814837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d01a02faee9beaf5d6ae49a36ea9e3a6ba231ed2efd5b6954418393bd1a51f
Date: Tue, 06 Sep 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662504653
