Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7572E3F5
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dahEVyDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBE5C433C8
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698329296;
	bh=ZqOtaRpDCF2RoVIWCaGy4RXZjA2D/wlI8nptt7TXou4=;
	h=To:Subject:From:Date:From;
	b=dahEVyDrGbq0vlmB6quWqCacWVruXW0UGMMY2gjgb/cwKJ6BbpweqDJuH0+BFSv2t
	 nWWkKhxIlvugTAa3fH2FaAMTwiTd+KjIBNuMuhB7NAsQNWBvYVYqztYmUhw6u2X+57
	 pCW39V+/aPyd2GCdtvGtVS1EVQy5X54kuMOWOD6HeQExbKpA4g0i3LxhqNt4pfJJ0Z
	 SESlHS5fzKrrc9OrSbJ8CxeQ/NhnQDZ5yJ2WYb30oC6zftjIkz/BDrGCMPIkWSBPts
	 fYF/weEGfkRDQrF3bSheguBEgGCzcQueHL5+HoehKokVVjZ5rmy9moA8Rc6CWEM4/c
	 Y31r6jKeXpLUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 847BFC25B67
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169832929653.5886.11599433515179677153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e0e2380b32c7a70b22fb08e2d0cc90b3b6cc2d30f5e7a8c4841f3984d155fd
Date: Thu, 26 Oct 2023 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698329296
