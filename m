Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8CA12E58
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCLGjbbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9040DC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697816896;
	bh=V2Yxl7HjYr1QO3MzX0/5t4/7Dlz/fW0HFskyHq41aPc=;
	h=To:Subject:From:Date:From;
	b=nCLGjbbpMeX4YGIwz13Y/KoblNCLHO6hHomT4Y8pclde8OCpxZzukKaG0tIDNs3A1
	 4BuqOVILpCkihJ6Wf3zCPGck7PAhxkFpPyf45SONdwKm78xNZCWIL+H6TtRvRyhQKk
	 5ujMniyiO/spLOkARTz2Xxt+hWhrUF3yOGeMc9rQo3uzi+FZOL4jzoQ3S4nyE4WhrV
	 cvTWWYWtLNkSNrBbV2M7/qPaiAClYSZ8AYyWLPMBg0eiE/MCH0QQ/7RkpUnse5oQmF
	 gWWwcZlT2Eb+CfobI7tR//Q9Q8V3F2zEw3i5ZpCEjk/fnDhrj8KwxWkapnCriSSN1T
	 J0VndLQlsH67w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 706FBC001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169781689641.8242.18026354360304163228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ddce45df65dae934dfe7ec755c2fecaa2fb1cbda396b4e5cd587bcb25ceb3a
Date: Fri, 20 Oct 2023 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697816896
