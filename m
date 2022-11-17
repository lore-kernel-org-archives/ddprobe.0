Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB2815A5
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D1B1C433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668648054;
	bh=yobpV9YhaFrXLsfdtQNl40PB+aXkOQnk/Z1rJDqSnKc=;
	h=To:Subject:From:Date:From;
	b=nNgrL+xnNp5sKTnPNVLqSYmOL2dCPsLm8gWFhOoT/C4GOfWdwHnZ5NETW/N9AdpRY
	 fimwfPXhxPxVcgpapPCiSDs2TZCtapD5DVXZvg4liKGP4NuFHehpRDCQ6ebCmQtnf8
	 td+kE9zjw/WxXFmZAUcnG5VKXEZ3mDbGHuWpXW2gM7PNDzRoEMjcOSh/lPlC7K6ayd
	 SWl6BkiO7jNbc+1nqBXk4v0g6jalDDPZRYup4VHoTStoDgNjY/WZpV72/D3L31vDA4
	 ivdnSHubC9zWKN3vEmd0rIA28RErb6WzWqlx42r2OQKMpbx9Rs1m6xDUAUCYKLYFeg
	 JKC//stT4m1rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B0AC433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166864805433.24230.11599931847077569121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4af161d889148ab15a7bd94dbc8d29919191003e83ec95484b39ae18e9153e4
Date: Thu, 17 Nov 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668648054
