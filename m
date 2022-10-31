Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54AD17F3
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B423C433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667203854;
	bh=O6ul6waM/UhllJz+L/dS64Lc8ixLzWMY7pPd4w7VUmY=;
	h=To:Subject:From:Date:From;
	b=HA/BccMtrU7kqVKCTlLhHzyxYfLbD8RyRydiXhX1lcCRvRDMou19IEsAZC2vioqQJ
	 tGBzbFLa7ckOcP83PPcjUqRpK51zIr5A9LkCsOEx2G0uHh9/lk4l5yww/h6dzdnW0H
	 0HD96aK2+ohJfnHTid601Wyb+2TejKtMjpwFZOyt5cCkwXl5tdoRjekPjB7cePCrrk
	 ztRHqkQmhvmzZgq6W0/pAfLbpeuh6wfBSvNeW86FxwnuYXJ4Jy3u8xB7dfr44EB3RW
	 N5Ddze6T2rG23gjcop2UDKaLe6gIEHWqqiFOLgFtw7Ge/a9BBRzpIflulffNbhZSn2
	 5SyTg+70ho6JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524DFFA3740
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166720385433.17677.16899281050938383461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aefc52335f4a7c09bf00284e4a26127c6b998c798b3da1d5d5a293520392422e
Date: Mon, 31 Oct 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667203854
