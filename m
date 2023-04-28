Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D3E17D8
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 06:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D1EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 06:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682662925;
	bh=cCI0u15/sbRVHY+MWKHEZ5r/5jJt2l0UL1E1bJfnFzs=;
	h=To:Subject:From:Date:From;
	b=C5wEfKy9vzjm5E+fgXc9PrrNU2ox8BO7mQjQ5hpwghYv9RNUDSQe/aci/7izVaJXN
	 +Q0vof9GuUBtUSzD8lv0R9CadOdzOuamyhWwwBdGszEH10LFh4j2YnhbVd9X0GSbnb
	 5uCuNPNGgMGhvZN3Gxa67wL0b6RpMnLUuv0yUQn+kq3cSKnU9sIwMkOkLhhfO4o6H3
	 Dy6uYFfJX83Jt0IqLm+VnsP5LA8fxf8449xJ4vHP0huigJY9OEXmxzuGyNafYVTlUN
	 KWZbUEY7hbgCHWPSJQJ8yc3rUCGM0gAayhaVV3dMpbue4bgIL3B6P1kQh1HlA7axFl
	 eUr3w8ek1oVsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C553BC77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 06:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168266292579.32160.5868555994272735694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294cd39c170fce2be839c1575db88fc724ddb22973e0087e21d9b0f13f86fded
Date: Fri, 28 Apr 2023 06:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682662925
