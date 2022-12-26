Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2A629AB
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87CFAC433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672075887;
	bh=DZ13AnnzJQ3i+rs9eRMXpOITbFqTcDllHNq3A8M9jzU=;
	h=To:Subject:From:Date:From;
	b=VwANiSugyO27X4rIEFr7qNZRLzNHQYP5f+5QYfaOnseAN3lHxieY99iY7uqBdealJ
	 aaUyhTwwv6rketi5Hfntul9BVjX+YYXvaBL/x6HEaprZ0aBf8T/UxhKTCjo94qXvIW
	 hsLd/chldcj4Ouz24QuhQMGTMStsd7cqjnfO4nCgfsHXdQJ5pLoF+Upa71qM72WsqR
	 UbkCS4eiLqB8L+oFP9lJjm3r0fvMxoWr385ZQy4XcddHUfmShTKAyax/WILbaorFJb
	 mQd9ufCaZ1zDm3cfxdlqqakKbwFxb9JRd9/VfbCJYJ8QlG1UTmlERit2UmZkuugB/5
	 PXrXDFemZAkLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BE5C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167207588737.2563.15447790424297936208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 383415d2c3a3bac2018ebcd7379743591a4f5f9c0c62e4afbfde8801adb4ae5e
Date: Mon, 26 Dec 2022 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672075887
