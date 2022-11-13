Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC49A31
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F990C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668336654;
	bh=uxm5O5oBGIK3b65wV1Psx+xeEJh6/D9l4kovtEDxP5k=;
	h=To:Subject:From:Date:From;
	b=EwR7u1ea8fiZn2DrOPTg/idjCIgeQDiVS9K5F2OptGiadqeZx7rwj+tIjIC3lpljl
	 KDDGbOVgyG/kcyL/Z9I5OhDtLUHTajXmsb/77Ihwc26ztlW/wp0+WJ0LxBjsCVrJ2H
	 kFnoFJtWAOpZ8keciVz4nBTwV8Xx0aqjLBMa5QYGHIRiaryOjzTrtDuY0psUOfn7Lx
	 5WGIrq8Y0Zp0k1NKMgdk+3wvMk9PoID89PfqeDlgIoUkNwhTLmHxWejPThh4IsL55x
	 3eoDEdk5ZXs7OWyZOKIbzlAQJ7NcQl13JURLMnNf6sEv609TertyjN/DyX00VTKzRi
	 LA8oUFcXJhWCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F7DC433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166833665436.9718.13513645067063291323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efac2e5bdb97743d2d1b35d70f38d6137f7a37cd5aeab07c99b5147fdcc19601
Date: Sun, 13 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668336654
