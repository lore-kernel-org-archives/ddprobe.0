Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DF128EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 11:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E73EFC4339B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 11:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674819785;
	bh=InfNGL+0+Dr8EAkDB14K/I/WRvzaHHy/6dM2uf5rvCg=;
	h=To:Subject:From:Date:From;
	b=r9LkvOomzfmD5njJIzIDuSIs83WdYCVdVfjSfCSIjpzn+Ji/UXywCPjgzn0sKbv3B
	 qjIopYUp/Fy193tmjhcvYsFveN6XILey6XFzmuL7WfNWaBJMVoLqxloiV/nwNWwaC3
	 WZ/it7e14nIEpCIGOYwoAHBGmO0QvaYuHBB3bJ16kfTbCY3WXowmoKlH8ZiBAJIlMw
	 wjwYg6g+2wxu0KVsC/YI3wU1EH/oGDb/S64CVvbTQR77wcGgmcGAZgyT8d5FMF4u0g
	 qNCOOkbepN07gj4ntowYS39Gw9ilaoMX3BFXPgtpFSlSKsGgsclIWent17DX+Tbk/S
	 VVLA2k1gL7DRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C976AC636CB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 11:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167481978581.12420.15568868672003671178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0098c190fbcbba00359e503d08564f1bdf6df849db2b4d92191cb8ee4006d0
Date: Fri, 27 Jan 2023 11:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674819785
