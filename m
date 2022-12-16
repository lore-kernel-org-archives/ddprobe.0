Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69D420F7
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 837BCC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671208887;
	bh=ECu/JjH+081WnabW/UKmwqbEBJx0fFrew8laHzgk9OY=;
	h=To:Subject:From:Date:From;
	b=JNFqsE1/LRSytJs+QWMTKhA9kxddsit2I2ugZTrTS29GW2szRnPESjFZvs87YJ7Om
	 fChiWYoN5NMFzJ6/ib6mUCMvZZyj3CuDDGTTISkTRqoUJKoDOjH/IAEVTAP4tG7fjv
	 ENSOxOUlouUpHtQrQfjGdvfYvkIuazmUjpplANU3XFE6W8+HS7+caHNOg2mkpB6a+d
	 CZnm52/D+dAV1CNVDsUwpTvoi4vemHA9ElZTwg0mhj8PkS7tmvG0Bgy1jNOWlIY9S7
	 8OpJaNxstRR7y5cYkM6BwC+TJC/sfozjeQVx+BtkT0jpFH9J0wmzUIWDeMAl3ybgR5
	 KU624QTMM0MTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64254C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167120888740.25989.7285016735639180234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e11c99133a4c00a6d744ebe0265fd50fa8662aea6d73065030a0fc6c07566eb
Date: Fri, 16 Dec 2022 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671208887
