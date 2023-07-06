Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3C1A47
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 05:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0F8C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 05:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688620628;
	bh=jm9xkxD6/xI8ngGCTScOWCa302EdHqkkzmdpQAd5f5k=;
	h=To:Subject:From:Date:From;
	b=KQs0BHmP8qKQDLgETMX/epGfnC3nhk4TDVuZse3uCGC5gOiZls3tLGPLbFU4pVfgJ
	 CruuFYYcdVI2ArStzLtkPBvsWjW6kRwL8wkIzYs+dz5ClSY+Ua1PHVNl7iRO1YjCkm
	 bWaPu3RnSWmGrEmbR2cBC6cF5qlqOmBnQpOeijD9ka+m0bt3dYFpyMIv1TFq90PHvm
	 8g2fVCNTTLyzmbjAPPTVCnGrTP7rJD1wCJPTqICZqnwPl5SCy0WMwGwjBA+48H/9L5
	 Bo17+kUlUToWSlrMrn89LGWDMaayJLPuwbYXu+ZacfQIoSzkEsbx7Tvt7N9YGCJ3Dq
	 HTrC6TkI9PoeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B207FEB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 05:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168862062872.22236.13277810605143463842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a637122a8c9df3d0f89f25e004c3ed71a010ca2ae5e9ca7ec5d5e3907b88fb7
Date: Thu, 06 Jul 2023 05:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688620628
