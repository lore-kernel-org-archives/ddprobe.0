Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26E76FBB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C030C433F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673379087;
	bh=pNgfvT4t79hdNgcKuZnvkSW7NMmJbDT2Ve/dckPbmjc=;
	h=To:Subject:From:Date:From;
	b=UPGjDY3yVqAitQ0hnuRBX803aT4a6FUEgAXNuhhn17UJKUhDakiktVFgqhwBC972F
	 2D0KTDl0F7y0d4QizxCEHK9Y0pbEF78KndgTY3jKRKdrDtt42dNwFfnY42YgyUEsik
	 oOb/K7FB9RFNNsA/0Jq3enGmTFPNWLIl8q8AvGEINg/yYqzDe8RyZWg33MjuCmrijc
	 /+AqJj3KANhXOkDNFgkxryRL9GDwRoz0CEWvY16GZeURXoSRbmtIy5GsvyAO8G2gx3
	 kneDkgwy/GoIOqLb8DB5NQG56MEhNqx0IXrfBmaDXwvcBJ8BhLPph5PbShCB51KWg+
	 zrEXgQ3tAlcbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AEC4C61DB3
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167337908742.11355.171119628937208694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0d15e2228711ad743b4bade4da4a32e38b1798575e00b1b42bc1d135b4abd1
Date: Tue, 10 Jan 2023 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673379087
