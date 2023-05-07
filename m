Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355887E
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 02:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9108C433EF
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 02:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683426485;
	bh=odz8EDSd/qD2buFrMyv2PdCoWnl+XLe71920hPvo9g0=;
	h=To:Subject:From:Date:From;
	b=hG4syf9QD773BuIVcXVmdp+ZmQxKN6OsaCsw7+XsFW+V4CguaZrogTjpGdWbZgLQX
	 2SO1LQJ1AXiegqyVaaHo8Y2MV+7O98+lFvFRGME9WEVKOOCuvJ5ssMAw20OBv6ERDk
	 Z2IfXw7xnEO8NucYnQX5YgFVBNjCdOdo9hxhv+qxl/Cb7e72QfQKNFiWU5n5Zp+GnN
	 DRkHBkZCI44AggneE+8X90Rj7ODk5amLRFZACwe0atRAAerJaoVDjMikNkmk0KUlK0
	 UbcnEhqtEspBugVnYQWDqvmeHKV27/yYs05JucW1yXrzOhqJNm0q+7+nvwH3iOIa1p
	 v4ultHwXz4Kiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CBDC77B7F
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 02:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168342648573.28773.534816735159272945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9029351f90727d64cf6968215906f832b521fbc11984384a5be141424214b4d1
Date: Sun, 07 May 2023 02:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683426485
