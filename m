Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0596718E1F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qj0fI1Pv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE2BC433C8
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699867696;
	bh=YrdCroNBs6PQTbGQ28+wWn5zj8Ueq/ZZulDyv1WB8ac=;
	h=To:Subject:From:Date:From;
	b=qj0fI1PvhVAJeX1bTKfoOu3Lv6bZIBfiHy5bpHOdIo/MjlXfhaJD04X+aZZr9HU8W
	 cKnkko3Zc62VJU+6LpDESQEL8wRXgFRKM8qmyj38oGCPY4Y8jYgdle7ee6jRvk5tkt
	 jESbBY97TNUneiyNqPnf5vxsxI31GQqcmm2snYP8XZs9uMx6fYUI4cDns9vSJAmtDt
	 5xgq1oVyDV9d/mEui2Pp4duUfFBWkkfsq5IJsbV8+4dZ960P7phendlJQPb3WXGIaE
	 C+Sb2+NvglQVz8QiM5MavrP8qnPKXeAo4ofR9XZj1td18omVNfOaNu/Y03MI4vGhV9
	 6rUpUYQ+qKjrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 619B8C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169986769638.23978.14913897547293711588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f34204a106f513943fa515a722c1b28d48f5d16892b50e97295701c02e04cea
Date: Mon, 13 Nov 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699867696
