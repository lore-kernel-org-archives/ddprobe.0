Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2267ED
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DB3AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672109487;
	bh=iy5CfxHMdKK300ZKAT18uDSxSU6w1uK3ULIsjwi/11o=;
	h=To:Subject:From:Date:From;
	b=Wucqun+Q6WOvDG9XTqs1wQKDeia42wA6Fy+2FsNQAPIpskbzAiNF/fx+H3PHvKrOU
	 PA0hYaH6V9hQWggqMY4HlRh6ni5rQIKsJ1LI9KvkDcT76YN5MIMP6IAF/ZqgmqD+0e
	 dqdaPAj2VaJUIEGRIOaZlwNE6Bleo5At8exQk/ISee0cYtn4XEYMXe/wQBKcRGQiR7
	 ZWhRnZLwOHpssSnvk8t5iLxNPHsUO8B5r75XnzJVcd7jAay0NlUmfjTjSYOyrSAltc
	 jtaoDNTR3sWBNhf0atkqiFnLvgPFAx7lxHiIsSqMR0f74XpcgrDw1jaXW5iRbSA2T8
	 IvdxS3aENifSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 707E5C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167210948741.10654.8644583306536948709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13af8d129811f8a028db72aff604e1bd671c0c801df44df172b189c2364671b4
Date: Tue, 27 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672109487
