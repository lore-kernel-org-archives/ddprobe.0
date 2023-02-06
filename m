Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B97B6116
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 21:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01BEDC433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 21:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675718766;
	bh=+78js65qvm9OfVO/jkYLQGD4VjXtuMFFJ11etzwQfEU=;
	h=To:Subject:From:Date:From;
	b=vFsZGFLcVvedJbWrmbmYjJmXu4U1jV8Qm+q+O0R/IU2idULqsdzbURwHe2dajVsEF
	 pwqSZORwaRoDgE673tzM1ueLDbTPN1JYz+jKMXc4hkqwFyuGtsEahYCmiT5KgTaDyQ
	 dYSRfnFJ4yO4bdAPz3xABe4JuNQ2j/qtN8IfRN7fDMRv0muBC3yifLiqT1v7YpjMsU
	 SIq3Qc0qVJLehXJr8EKunK1QmA3Jw3GoU4YqTVYCLG3vmQMaqH2pykXHuggfIHBeoE
	 q8P0HkrGA/7ck/cXa7hR9N/NoEeVDna9Zc/WvvfS1bD+gjicDv7/sxYjRYRDVm1r7+
	 7F2Kb4f/trf3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE625C05027
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 21:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167571876582.27254.1412854789620542398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd65cd0201d70698a4b5d9e4d38f70b8b9a940f1b2aaf94b60a2050cb9ab0f16
Date: Mon, 06 Feb 2023 21:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675718765
