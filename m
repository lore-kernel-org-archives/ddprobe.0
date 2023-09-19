Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4338A13AF3
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 06:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09C8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 06:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695105908;
	bh=Rfn9mydgUis4SEk2XRRsWH22L7bNyPebX5Z3KvXJK2A=;
	h=To:Subject:From:Date:From;
	b=k0VnTF9eMKhcJuj7iZ0Ew5iq2aoL5pTXbFE/OWL5aRicWL0IZ5lG/0NujwcWWNEPK
	 WwASzsDP0ecn0rYGIOOqVnNi/F7sZK9yZg6/PxurM/EvLJNE7sDYVqbbzRqTY/s/MB
	 W7w+tBmFyc2REydBUFQBXVL6H/KCdKiBYaiPdYU+Pboi6CkoXpKSoznz+ByHarbKcB
	 x6tGCzC0W/AZaM1HnOYTYbvv7LWdoguUTFKe0DLF5Xh1bdQYXUecYoZsPv3RQv4yOa
	 MX2yhJ0ZBVQwfEFct55lGdij/u0Sok9gMEyJkCoZ7Y+R+Udd+u9iBxvuKnOUz6SjjT
	 WIqoOA6aLv3Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A233DCD3440
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 06:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169510590865.762.10975725004808601260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56bddbe05b1d2e2cbe7912cb9cb8b537c8bd5fd2d1d7619e9abe318dedecfeb2
Date: Tue, 19 Sep 2023 06:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695105908
