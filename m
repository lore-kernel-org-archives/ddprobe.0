Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83A57C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 21:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B13EC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 21:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661722252;
	bh=ZQaLy2DCFYwXAeU7NARsIcwP9ewauUPqgTWWAdBGRzc=;
	h=To:Subject:From:Date:From;
	b=NVjOo17clkvqkUvCNNHL08oEXKT0sLla21AJqSUG2DfUc6Czn7tRu9bDrsWSvt9se
	 nUiADjVgvvRgtv/qTyS8ADV6j6VIsgpXqR+/oX5WKt8Mt/BfDSyH8EH+7J/dQn+8RH
	 gM0zBbSQErp3+6Hu92VVFQJuXINpDL4xI/gYNGd0p0i/cxR728G6K5VoaNEKdCUG+6
	 LS8y8AmSYfOVLa72GcVD/6sWgY72+83gdjNks0miOVP141g1/gSJq54JidmTKyVl3w
	 LV/LSOVviglV+/0IOBj8jUCGCiNa4jZKNgUyiYjvhp6v8F7YPBRygKHYf7RYtfI7bU
	 KtqY/NCSaSQUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C165ECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 21:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166172225235.29843.3548552201142636545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532f7f1a063f062ce3faa977268a9cbeff84a5852cdd87c62c1701fb49bc46b5
Date: Sun, 28 Aug 2022 21:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661722252
