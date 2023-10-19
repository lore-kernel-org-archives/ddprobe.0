Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8844DD314
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 16:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnPNOrKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03BCBC433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 16:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697732293;
	bh=WiPCUESSkCWCEsZYts3YdO46Xz3BSpDamPrpMJV6ys4=;
	h=To:Subject:From:Date:From;
	b=VnPNOrKVMIAi/FEYpzmprvyKJDAN4oIHrc5GvMzUmAELecHmxbwLFEZ2+S2iwDxJj
	 YDEYg+BBZblp7SkzrrBrZ2gQT2vM4igAGHr2iZHjwNPEsLjycDLnVf5fzMhY9KKZaR
	 oXPzJtYsxZylM3MxkcKBUahEYdKpNLipOXTtIxw/QBP6iaZT1RrKmFK80f16lkw9ly
	 R/f0+X8BZwgm9VmGXVunKV31BduA5t3djjJGVr5YcWW8E2iE6sDagA1OHhEFvTTOHE
	 XamfZOAlfC62Be2CgjRRJQEsPREwAnj7FzSBIoZJhm9VoM8S7pqPZ691QusTq/lMtq
	 cQyEZmP6S27oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA4FFCDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 16:18:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169773229287.14107.917664264645677641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204fab23e75f9fd834f501eab881e699ca0027493773b35e466c2752e8cb5582
Date: Thu, 19 Oct 2023 16:18:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697732292
