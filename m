Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B031118
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 03:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7EB6C433C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 03:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691119988;
	bh=mLAh/v+XAjZvLRxUKLs4Owcs+UAmbDEKhJC/tOG1TBE=;
	h=To:Subject:From:Date:From;
	b=pgv6xhnm3a43tnUEK3K5YSjKCWkWxPLDa3OytAtt9DWu7LicEr4mlrYtZhS9b783L
	 9V3VlGTsuO+lt2WEs5K8L+Oqz1IwBb2TEcnJtUqIQ9AKyavcdYzeuoP6JzWS9K3ZCj
	 VimPOwEHZGIIQJvNB0yK+116wm2qsyB80QPPiEyDYbLgFrhBDHrbonCNiYXZn9ueJY
	 EmgkQzfOqO68rHWbxJ1Dret6u9islWxDJG0IuDM5Bsg/X7jvJ7cb5Qoazq2QamL2XV
	 6rcRD05HQ2lZm3d/7kpYoVXfbL2oYCmav7Fcc+uNZ3cOFcNz+5U/xAejjs990ER+iL
	 Sl3xsYlTNBTrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8550C001DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 03:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169111998867.25938.13094626188131739922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff30122121fdd57004db1ec7d9e20d0b5dd0eafff4630d7ef4dfc812fbdf924
Date: Fri, 04 Aug 2023 03:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691119988
