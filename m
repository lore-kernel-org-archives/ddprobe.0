Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2DE079C0
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7362AC433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669835454;
	bh=Mgd0eiQF1hbKj1btC8kNu874QuBIRjJ3Uqz5fqyK678=;
	h=To:Subject:From:Date:From;
	b=PyZioNsd/vgpUP5C8TYLuCCIgGT/hF33mhlWsFX5iXSzH4uoYSNWF2NhKLp03aFcZ
	 WADv0/cFBrf4dXRcdeGRNDdgDSWo+lNE2K+uTyUORqStGYOKdEwEsHEqj23mJ9fpSQ
	 eRDqqjgHHmr6z7GLTvpbHcizYKdBCGLE1exOzQmFWuCHoz/nN/qzuhQ9oLiRxbjEy8
	 k+g2ansmIUxtPyuvj5NUlmg8SQHS739aJJ5C6nMhF8tU9qgRNipgiiWtxM9Fwd5i/l
	 4I2J6CRHn6mxQMH6Zw7ec0jpXwpZC+Nc3NmEpekEDZutCCCpUKpf5UQ+iLyHVKUk6k
	 8WMJxE5S8b55g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C0DC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166983545434.2531.7755177740804965820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33a9d11c69c6e5518fa6bbda3eeb62cc462c1d5115a8401713be5128846ec65
Date: Wed, 30 Nov 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669835454
