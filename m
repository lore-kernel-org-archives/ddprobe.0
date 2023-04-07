Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C033EBC
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 03:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42A6C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 03:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680839885;
	bh=qZelYX7M7Vw2ZomKLE8rGvHVvaLGFf3Tv1NV2aasNnE=;
	h=To:Subject:From:Date:From;
	b=mGTRhEidt/lLo4/0ItG74FtXBAAgHY++4x4CADc9qHlzKWnBsIr1MOYgEfKc6CwKy
	 BHvzeqhq5bYWakSTVqYIOuQn5yEZM9brXPI2xKGQCnOmPMcO5owUPjf6OUTeUXv03x
	 K1Cki3A1WMDDy8a+tjcPVOmKk2+tvnORavSXqMfDDqWQZ+DyRB3fl16LaCNebwNj1U
	 Mie/vmrBN+3TCtDSRxkQa5Kp+qlFlsk7m7KjDnrThu7b0hWy2qU61UeG5ktgGtbJr2
	 OgMcaTSNdO+vVWsTmOErOcedLlULaSGziTx9dmZ8D4ijFTQcRMINj4d/hWFejytnIc
	 LqsceQSauh5ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF37C6FD1D
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 03:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168083988576.19868.11595561805209424383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5735a3d574fec70389dee1bfd512baffe9017e99765ff050bb758507e97f0ad7
Date: Fri, 07 Apr 2023 03:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680839885
