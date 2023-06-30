Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583EF171CD
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 17:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E887CC433D9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 17:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688145788;
	bh=Qnge6ykuUx96mQQ3C+QhQwSa8k/e/npfaQrVunDPdwA=;
	h=To:Subject:From:Date:From;
	b=jjbkGFe9G5LhlNXb0oqMJMle+0C/W8UosPRXlpeXgr+coWQIJitn9QyvpjgRmcEGd
	 eWYE4pM14EHgVKNiqly7JkcjWbe4FR2JOlEsW0K/MPo4CFc2xJNPH0lEpTPKdU+zCe
	 H3UasSyL2n1LNEIhBkFO3t5X7UVBmACSv3zt4zxcD71I/T9wkdIw35KsVSbm5AvL74
	 FNY8TTtANiJOzwYlwB0eeZ07SwWAR5fAI/vhy0OeKhYxLxt2GxcmhErnnQFtYqGWMU
	 uPUvgv0kAuPMc2RluIQTgE16zZyjGlzdkJlnpFFbBY9Go8QHSe8NLaW9gyU0TNGJ/P
	 YlpsAuC7j7YGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC1CEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 17:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168814578883.22219.1160124186715731872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be181eaf1e7d8c5760fb1e898ee24b9a655c313c5217dbcc0020d0df8705506d
Date: Fri, 30 Jun 2023 17:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688145788
