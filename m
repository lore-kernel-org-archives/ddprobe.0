Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231F7EBB
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 08:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B00C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 08:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679991185;
	bh=HP9qJ7kNEY/QHz8R9YFwnUfqMAA8ZcyVtQ25tQoBYzY=;
	h=To:Subject:From:Date:From;
	b=Hgd/wn7xrqRee2qe0OedHMSd0vY5J5K2kJUN2DiCRgm5I2yPS7IV8HcLGVAGKCTYF
	 tSJ+87m1BuNblqqxPwGN7fWWkzd6Ptdopsay/fzKZ14avaRN90ohiiszomSch/CEtw
	 H0vxFQWoqRUUtACRFCCGq8bag7/NFsI3U/lRAGY0+zZOhGSxI/ZCuCz8hX19tmlEYH
	 FqUvEEgxKoHJy4Qs/aV5cki26Q8BTWSypsJb8WYVYr2Z7E+eWUMFSyQOXbHg+87/rb
	 PTdTgI2tbsHKVQfwE6E4T+ZGGNKNn9KQPonBbWzUGEKsR/ccCDlXEGCEoHusLYEdTQ
	 QE/yCheGmQ+tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7177C76196
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 08:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167999118574.11594.3505446691974983321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1467bc9d9c255b249470cb889459f01d0b9a7f923f478183ed58051575cddb8e
Date: Tue, 28 Mar 2023 08:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679991185
