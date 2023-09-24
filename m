Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DC37FE
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 06:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AECC433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 06:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695535508;
	bh=SJrBwqUQXRHr9NMxENRWTvUKkbhJsfzaX3DoXHfHdok=;
	h=To:Subject:From:Date:From;
	b=RG4wcVFsTNumIw4+KTCdbCjrWrF6ggbxLbf0MrdzOZfOmqNFAPTVL3N1BQxmw30fc
	 mW/CN+mR7WJenFIU/pO5eUGYNnK1pBBXE6b3s7Ih3hljhGiQ+GsLPmPOmmemjBSBgR
	 jL73xOkRVBiKkE9zKJ/+X27WZ9qxQDHMD6ebfZja8D3m9A9WhpBd1lu7fkIdZT5aUh
	 AENd0SZXKG6qZJPiHHyUve6XXc2Iq0BWJi61KiPjggJNrI10nNNYRMioM7/kUTF28g
	 NR+8HM6i14d71pV2ceq2aqb8/Mxmzf1K0VVn7FyYb/XJC/zsYdezeB8L2K9yQyT7/Q
	 KZPvn0/JHJQhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8580CE7A88
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 06:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169553550867.3781.7339259763219993825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7777a4b74dfe133eaae910eb841942e6de2b9fd34a50cd03ea7a2a5415598946
Date: Sun, 24 Sep 2023 06:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695535508
