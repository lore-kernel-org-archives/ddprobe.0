Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC00E64C
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7978CC433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665034853;
	bh=UC3LZKGGxp0qoPMoQ0SZic7ygFZ/+ssERWpgIcwnqJc=;
	h=To:Subject:From:Date:From;
	b=HlNvYgUMkLuxMHc9Llj9M367V194FuuKTjO3b9ID+dfTGUxhpt240Clo/j5owtIOd
	 jQ78Pz50bN65MO/Q/rVXSljoHGm1il6v7IkB8aRZZxGervyO02G0Pd9aqPP03PH32O
	 LrE4f+s2AO+S9JEnRcz+lCzyTOifHrJ7UAKcRI/7RpjO/rF2B/qv/tvf94Q4nmmUMF
	 KadVAePoh/Xv1jZPeTYOtZnvMPkd1kWkNkIuotESYH+B57wpc+U/X+3m2QO/gkHJs5
	 6W5YghVqjR3iYW9XZB56YkwtL2xwaHS9WvsvTbYyH2ClDTozBZjjm/sES0MXzqhmBV
	 gFRtL7ysbF2mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E8CDC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166503485336.10102.11733776118326158250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a69cf0b92566c19a07e408b1e2331bfcbec14dd1eacdf099fa440b593196a494
Date: Thu, 06 Oct 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665034853
