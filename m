Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77BC83D60
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 23:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 31E97C433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 23:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678058226;
	bh=9V/Y+J/4S60C42b4luiyKL3o9w2mUGAXdOHVHDJ6zGc=;
	h=To:Subject:From:Date:From;
	b=Al/4mnK6X33ZXrFV17pxivvuhoWUSq/qbfU2wyUmPeZos8kEten+LLZxQzPe7yMCY
	 EzsE8IpT4+VAvFbAEq8CUvV93slAqqt2dbiAy59t84hbbSTll4tY8Lb8usKDszxhu5
	 8e2O6RTBui3sUSX+4GhFjNeotp0jAbA1FBC69zXGCP+i/Aumf3Ps/Hjebgkh+qikBz
	 d8+s2Y2Wd7oDmdvplFYlvabjV32yIMfqe50hYgaJijLpsVP7qSC5JvkQvdghS9HbWZ
	 RkQWoKDX7hgVWIQwJuYjkn6imvIL5TnXmf+AyJ665Jeoqugm1SksnZPD5ONoitmmnT
	 hlU4SNEmDkhpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F41CFC61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 23:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167805822596.23155.11311243586239607145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f9269d61892beb089da7087395e68185de4fa8417b9d658a813e62e6a54fcfb
Date: Sun, 05 Mar 2023 23:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678058225
