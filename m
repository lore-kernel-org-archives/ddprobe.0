Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A5D6133
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGMe9h8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9263DC433C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697990296;
	bh=NkL+ThESgfVvzfhI4sspL1zak+W5sxnHL6z0Yu95zkY=;
	h=To:Subject:From:Date:From;
	b=PGMe9h8Yf2Ayl/kDBjmzSqROxeadMxM55o2dmNLIjQH9Z5WlAHte53VlW+naoLGG+
	 mb9fdn/fsfUhd3HnjrDILWljIZ/vn2mwcRXeKD6rpLp9IWlXHHbDObHIu4nKHE0kDb
	 pu1fv8owTMmubxoNW7vijwl3JnDRdmsJWxyiPc4IHY85vQ0n9atWI5Fw5oEdSsWcE3
	 zK+CMe1kT0z6q7l52dJ9Lyyy4wd/Tq5dWVftORhUgLSVUojaoMZZxrVVeXZgT6Lo0O
	 rsx/gmqFarqJvyfY9axz5simSVd3TAX2NSFVwmcY5O8Kn8dzQQFikU0YEbQoA8yh5Q
	 eeRHCM7RpOpcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BED1C001DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169799029642.31162.14133793986588689798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c047abfd90e3c8682c265bbdff9309b16a7474f652bedeca0e0299d1dc216297
Date: Sun, 22 Oct 2023 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697990296
