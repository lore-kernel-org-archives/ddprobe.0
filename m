Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA221FB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 08:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA256C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 08:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679386085;
	bh=VrOFQO6XFWqMcvs8Pq2czYurlipYCaOty02OeBUHJYE=;
	h=To:Subject:From:Date:From;
	b=YlgJtAwkHp2NvEMvHv6PxR9HAxbGIQ1akeLIE1hvT49iY09I0WWOd7aHlUsZUzKay
	 ZRCV3HIWO5uSng4Oymcb+bo0CWrDsGPKKns+gbQZCqdkCNHA4LjayiTIb8dtO4IOGv
	 7NVlAZ1Z+pV/L9n3DwXF+jHwmBCVMaXqrUL7DdKDBXQ8ysnZAhanGJJ5Rzj1yMZjf0
	 9KIO0/dvFx85aTkHRRmRZ20FcfjwpvJvnaW3gDuhWzW+FCc2BYOqKUlXXo0QftT2cc
	 EgJK5zU4NHdv6zUH5My5++5epEIHmf02v8w02/BM4Unkx+3rtjEOgTiAG/U6FBI1rC
	 eAEgsYeeqV17w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1948C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 08:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167938608578.13382.640537407212127195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb3b0d3ae0f0be7991b135828cd20d3c8d34998c6bbbe6c7d2bd06d77699419
Date: Tue, 21 Mar 2023 08:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679386085
