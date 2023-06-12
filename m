Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E75EDC
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 04:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED3D0C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 04:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686544386;
	bh=mPWDnZknIHFcngpVU0rBcwxwVQXaoIxFSno8PDKdl3g=;
	h=To:Subject:From:Date:From;
	b=kvgYFuUinTPfvDZ/Bo9gWDP7ce8g82C3ose8YPLgxAF455UVLLymK7NbGX1WnKQJU
	 QEN0FxHaRsVfyQRZgBMsLD5pa+EkDV0foJUcT/G7dyb0nqi2q9WnUyZwyr3bSjOzCD
	 gQ5ZbOGRraaM/qkQaunTGv8WReir3xc4FtJ4PcwzaxQiOGyfHTTDFW883Xo5BO7Rb/
	 0pN/IKjmsO3mvsc28t7H8dI7iUAmAEJbTRn+if3D+cz6HBdjg/OnP9GRjOTrMzQsM2
	 +FZy6hBuTfGgT/JFoqMOJVc82TimB/iIG4/hMJUB+nhTqoVIhFlP4YxOo2qz941Myh
	 xBtfgKvJvb7gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE251C7EE25
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 04:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168654438582.3962.11648066011004077006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5b0573ab5fc2f5d0f51bf4f7b0cfb8c16e0188888f2d0c3c6071742210dc8e
Date: Mon, 12 Jun 2023 04:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686544385
