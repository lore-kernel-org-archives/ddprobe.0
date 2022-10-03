Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBBBF33E0
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AF60C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664841053;
	bh=JbQl2E/sCQy5NmNJ2jPe4V2VD/hRTQBIzrGh9XPpIUI=;
	h=To:Subject:From:Date:From;
	b=pTVwNXInTld+BZpZCYKtebYcBK60bSJkKp7K6MTIztyWkZvGrjyZBHMt/a6T8Iu63
	 xO4mrmnUiu7m0lPWwLBDkCw58gXPl9qM35vqaEqtu6/QxNqKGG01fbEak7eQC12V+9
	 a7KwdMj/gGzc1YasaOKKl0D3CsvkSEXjaHL8pB3Q6n3i47rne8lXoAMb6qzG7tqVo+
	 jWy+YxaWURL+cK5zPtlHGK9nHjRQeyn4nrISWmLFvMw76tFcQeFGODc79cP4QGsnmF
	 BS/QgX556g+tIz0E1ZcbTgpY50dTIdSfi4NDr3eAvSUnApPhVCPbTZrfFH+jbMr4Ky
	 C3WUCWAaTgJFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56539C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166484105334.7070.15033401288487899778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567f43b0ca870495f270dcc33fa91b0b19c1467e41e1391306c683f3b6246f32
Date: Mon, 03 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664841053
