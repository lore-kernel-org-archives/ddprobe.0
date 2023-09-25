Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61786EC0
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 06:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB842C433C9
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 06:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695623708;
	bh=eSPWocwY90jvgVWINwHBUa4M5eRa/YrtX6S0sLXzA7g=;
	h=To:Subject:From:Date:From;
	b=gt+WqoCPLuU9xWSuB/jbhRBgkDYf8fZdbwef+cuDG8JV6Ks/lhFjpNg+WaFYGa3jl
	 MyzBjbaMq89FheonEvyxk6q7rYWIaWsdJdlxOUuYXtOAPl03k3S6YffJ/W+X4q2i11
	 Yfm64P0smMAUeB9XUZJcIac7TViPmaehUDRNBSqEPY16BKD60PCqUF16K1ZijZtMMJ
	 hTSHoriDDIKb3UmhEXRRx2YJpMswesFHtfs3+NPl0a2RSGtcr//ZEKmd6vNSQ9CjSF
	 4M2w3gBRbc5E+OGT5j3o+8oU/hxv8uZgHpYQnn+zcLdCxRa2RuvIHoFF0TtosnEcZK
	 ENvbLDkjZE9Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21D3CE7A81
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 06:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169562370870.7688.11901103621018026944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa46b93699f1977f754a83cfe65c8c3eaeceb74da8e424df595e1a590e83392
Date: Mon, 25 Sep 2023 06:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695623708
