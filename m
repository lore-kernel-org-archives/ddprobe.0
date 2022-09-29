Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB45EA9
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75ED0C433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664415653;
	bh=54FlVgFYOif9dU86KqQRl1VGXKWP90HgxpFxYIVpCQg=;
	h=To:Subject:From:Date:From;
	b=r7V7je1ZjvWEFsfhcWQDB5YCc9N4FHqq+NcWy3eBDQ1TaeMJO/fTylJ+nfhBaUYfm
	 F7Bzq4MxDIu4l3+74Zaqf2lyV5BjTqFmGceOJaTw+3tze0aCpvXDaYeLERgEY+2Y2r
	 rngC1qUky9OoDN+U+mmtIEPYJDKZfxEd1ghOxFZ1IfY5+/T2fLKtCUom+bqVP0PdSn
	 Tmc1HH5OdpoAtr8HGsHRHR7ix3BS10De7yczJ81+4eehlIof0PxMzVsfCOgQcXHYwf
	 F1er/mAVg69hq5GOR7e/myZ9P1VcLJlJ4rQ95H1j9k2E+Anee5nOJJigdz5Cn4NyLi
	 eS4RGpwOQpYGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 598E1C04A95
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166441565335.18626.5451047206089413681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c87f9b227a3b30e51a5d0d22d233dea3debeed3ef1833831d205f6663e0327f
Date: Thu, 29 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664415653
