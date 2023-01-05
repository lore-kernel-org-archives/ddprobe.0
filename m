Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E265F8BE0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 805CAC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672927287;
	bh=nVOX8WbY7KS4JCNkm7jYtQTsBt9W6Wngl6Gt0IZ0Htg=;
	h=To:Subject:From:Date:From;
	b=fbppsj8WDI8Ss/EbygO8pasuz8NN1R+6DjBuwC1DWu1hFHVnJbBlrPYb7O0NDiscc
	 25DkQTuKj7flJuc5O/lPGjFF8ZnKJRmYgoJTIHC1+i7RSrprO3O0EOWv1hLjNcNwMI
	 NCa3ysrT9l627O6LlrR9ZevOMT5/MH8NqTNFYeZwrUqLAWai/0C8iJrf6vOVkwClgw
	 XCkPwa54/GNuFquzahHwkYIdhvzh2J2TIUMMxje0M9TA3bqMbta6aXZU0kpb7SYg9q
	 r2vWpxC3CcFr80LCrpSFrP3ggKOTplIFAOuoTAZKv6i8WuHRaBJ8FjD64/Zl3PbVIu
	 luM97FNC4ShNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 668E0C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167292728741.21816.10674959792586731798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6b005ca9b3f9c75f1420e3e129baec147c63f5936e7b4ac29eb194cd83757c
Date: Thu, 05 Jan 2023 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672927287
