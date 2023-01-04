Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E43810
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE89C433F0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672831887;
	bh=mC9rdcH2Dof3wt9aXYRqcXwAUIw52VXKA6K4Jrh6FxY=;
	h=To:Subject:From:Date:From;
	b=at4kpnH+GFwAWAWYHrpdMAHg1rpBqlXYD41U6pXj2J33FS9MkR9JcKWEei7nesV0Q
	 Mj7uiojsAVv5nnwxxX5Y/IwMrzzbPgP851AuVw8WKT5qlgo8HVqv+EsjqAGv4Bxx55
	 6yp7dV5ucRXNBktloGZISNWM4vzuY4kaU3WVKANhdrYjalXqowa6LCYKZLTh/ZLiZq
	 mgzLxWj21mktWZY7aclNHq7ywSZBjlPnt2f01RiB8iZsNN8k6YAjFwTjirjk56dEFT
	 mBfNvbnoxDzIcpyldqRnkaKC+k4sprZUeF27hujfRGy2SXVnYgCKFChXslbkIH0h42
	 MnlmWd3VfpUhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F14C46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167283188739.21711.16645815950680287671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f0314fc5a91223f95e0d5d7529dd0c79edfbe72e4b7ba7637f3463ebfb431a
Date: Wed, 04 Jan 2023 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672831887
