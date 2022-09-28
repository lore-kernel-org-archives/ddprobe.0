Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F107E
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 744CEC433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664327453;
	bh=tM9sEe+dXMcNpzhnIMZQdUiUzDCzznaMaYor4pYHEH4=;
	h=To:Subject:From:Date:From;
	b=qfgT227swh4nzElET4X3+CTduJzyx1/ntOyQe5CT2tt0Uzz8xI3mVLuzfAhPPECkJ
	 JMFJWAPXEV2HnQvHwhwFMpatbJDdUQ+iGyhiWoxTNpm0EHXpDvd7Vn4X7r2C7GQByi
	 2MYLNYPAUxEQfNnJa+FH7/M/P1Ss0bSf2e7JoC5+Rxy3z9tg5NKTQiqnjYVAV4vAGr
	 YcJ4TsUeuqTvvWygPZYkK5OsmZHJ0N0J93bLMebgmA9e21CVmOLM7iOCqHME3Q7IdQ
	 cW8mSjzSW/mCqcjPA2Drtw1wUa2yoX0AJJ+bDVdv1nMDJ67ro0q+I4H9cOTsX3jm5e
	 MHf2LNFaBlnzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50DC7C07E9D
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166432745332.25574.14009663335873561307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a50249e4f0d345f91e5fa7ddd94f0b588e5e5f1faf0e9303369ede52cdb32eaf
Date: Wed, 28 Sep 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664327453
