Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE41145BEB
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ophvm5TV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 870EFC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704721696;
	bh=LpbgV8D17HIK6OrG7QgogAHSaMmprh74tj8SCecwxHQ=;
	h=To:Subject:From:Date:From;
	b=Ophvm5TVeM1ymFyhjGF9FaYYpkx7DwI3GyjgLHnchCYFJ+Zxan6BhL1TO0wGNcWDn
	 4WFv4cKIUTCymbCsa0Phxb3i+/6eAX6lB/Tu4oe1OPwvC8OAnr0zgB6GFVbTP71YJc
	 COJyfmlw9m1+bVGeMpYXbH56+4v94gIAizqtUftzB8XzBKI/CGS7/rtSyVIre9rMns
	 rTUVL6UseZKZEk3wEtJLfZN9qIYCEjaiR0neg2owf8XVC19T8/j2oBeX2PnwhD85r/
	 8BDJIPEeumkRaQiuHjgDVQf6aExeo8e1U9IP/bayqDHFoEc6Ies5+tEJ32keJoyB0v
	 zijz/RqTb+JaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A88BC3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170472169641.22349.13202743143417207559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f4e831671f201b2ecbf16ffbb994c8e61d009cd4f6cdf227dcb904e896626c
Date: Mon, 08 Jan 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704721696
