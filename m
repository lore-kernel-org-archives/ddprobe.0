Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67F580B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7960FC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668980454;
	bh=2mh3/Gf+0UnGI18NMmaWulFDwqZI6D6f6pwejvCzNtc=;
	h=To:Subject:From:Date:From;
	b=Tdm1qPAWcStUWlQHUfY2ZlXT1borV8+8aazno2sASM7nWSh2RwYS56Cggymf0NNrx
	 LIkYnVpV7FeBkGdxQnSyJLFnsoF8GlgDkK4rEgxgUUV1Ie06u0D8+8PlH6TPwVYtW2
	 EiQ9kRE5fH6qXWRL3FBxYpfkvYsY390B7OFxlTHmX9TSfIU6qwybjRfFCvMUIF9OIb
	 ilIxlbOam96GRGAkDAaybWTV1QOGwSZptyyimvaK+DgIivocBScsnjFObK9gy/3ZtP
	 Yq5Hpm9Q8CICZjk92NWr1H/JuuklQ4sv4ptTT7pVKU9aQamLyd0I3y+LJCGl8nuToq
	 P3FqYNVjt3ajw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 520E2C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166898045432.16578.9380318148812629324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f5e14cafac546787c0b8d0f6439189530891c42bbeaa804a5ed0b1b05ef444
Date: Sun, 20 Nov 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668980454
