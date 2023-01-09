Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED16515B4
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 849FFC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673246487;
	bh=TUScKieWdXtq4oHwsbZTNLPSjBZpDM3sFGgLWHoAaOM=;
	h=To:Subject:From:Date:From;
	b=OEm5nFcAC8i7e7hgLo6BYFSKCa2dl+YRftGb0EaIEv2hfCi2D/1iDew0AWbFHi5Zt
	 fvnDr28LcxLMrO4FTTjp82VhKAIfw6WvSU1O/nBj6lF+Zib0yGBndB6WvSjXtu1ZpP
	 dOYkjqHlZbCiUrsM+HpSrWgZGYXEiQL0MhEYJ4bQF2VeqGaqEIvotyS4Nb7qUh3NMl
	 JIUUS4TzA/JZ12ZAZG2XgkSNyRizu7Vi/ZHN0OBHi+APgpHkzgYvV4BRDuZTKSX3aq
	 evG3JbI/kbFEtveeyzmRRNST0Pp6efGbVe6x1M9zSOtO+Mi1VD2kCOK5s0hI3hJDS8
	 d5vgSZZPV/Z9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 696C8C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167324648739.9142.11179582345871439507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3869a5f8845cfb797fe7a5ad47fd0777ee167a6c41dc7b0dd64b06b2d30d332
Date: Mon, 09 Jan 2023 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673246487
