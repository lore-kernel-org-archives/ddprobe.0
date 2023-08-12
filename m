Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9BB1CCAF
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 12:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEB1C433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 12:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691843588;
	bh=c327WX5rA57iZ3dVCpeRsg0e1l73GFOIvly7snAajOg=;
	h=To:Subject:From:Date:From;
	b=Hqbk6LnDjAqO7qXDF+SqqXPMNgqRqWchJlVngrGyknWK6xWavNM7R9OhPsftHp1sA
	 VLHTjGZS1OoqMOVG5Mb40pTQMd2F9VSnIrBWui4bxlKySLJqyDOvK/CKRY/ZAYA7He
	 IRdTdejDQogWkbzoZeHiuaJ2ppd5dQiRZIEeXmd68L+1YvN+LYGLu3VJSHB9uECJzx
	 Dg16ojetGjzFACgmj6CnQe5JobPX4d9XQfyAHrWS5RD+ydFccFpsN+vsq7gaYj6cPp
	 D+RrE7NqFP+HdG/G8R/Rp3+HlCEYS+Pn7rzQcscRHlpEjTFRIxFJ9oc3FGZ0L8OoG+
	 0tMX1fWBYGOvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4BBC001B0
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 12:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169184358869.4567.16451977158234789309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245a8d3c0361a453d2bd33af10a7b2c6064306f46b44720839f164ad35faf6fc
Date: Sat, 12 Aug 2023 12:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691843588
