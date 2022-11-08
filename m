Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D83612F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D2F9C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667893254;
	bh=ug2rkzEB2HlyjTAYKDVfyw81gZXFVMEDdxG/MvJW6Dk=;
	h=To:Subject:From:Date:From;
	b=rrc8YSTEIEPHp/rMenKI+Wjm3HgbHNxfbhbH7zCYvGMFhe/ZEHAlNP2bbNLKfxdFV
	 f3xb2fJRnZWYK8shvdc9eNfXvBFQfEvOL/H8/SLNOe2/n3df9qA57xWTozEBghGMU3
	 0N2iz1lFM8OORXwiNXEP4/8nWPEFxaegBbmorkKGxpk0EE1u9FKXGk9XBTQS2xRJKK
	 3XBs0+ZydyGhcnFxTq2ANGKDTzcrFa6xEW+046GIFGHwC3xGdt+SuHc3xsxczZ81xe
	 UNTLZJYpHiS84t6YLQY7je6GTIrbH6NKj/xw0T9YQL7AA1i5paHsjsXkFg0tOUzSQL
	 Tex84MfbSFkCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A44C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166789325434.2301.10828760866965879461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212a37faa2b070cc1ec85091cc4b5859868c0316245c765f839db60133811427
Date: Tue, 08 Nov 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667893254
