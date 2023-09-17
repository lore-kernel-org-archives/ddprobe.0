Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538C633D0
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 14:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF08C433C8
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 14:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694960708;
	bh=sWUuWjK5/tJ4CBLx2UoTucUculweaAvf/lXelUu8ir4=;
	h=To:Subject:From:Date:From;
	b=RzbFY/JD6EotjNwcVgAxnOTr0sJSbPajZp/7gVeOUrkD7dgYU4BvoBeKeX6Jbgfw5
	 FofYfjddvNHJ6zGl0o8h5Y8Dif+pbItFR7RKaOwUeAh/Mr6vIfKUFvSFhaBOHj6C4d
	 UXj/PXiLwgzxbm8rUpgTrOUSXQKNkfrhpHPXoDj6Cp2uK0lXJz4pPQgoCmPyKQwSZH
	 hjVaErzOK0K2lc/Z1nBXgvRUoR9hHbtw+k9ulwmbJlQLP0V+v7tYPTCbyW52c18sxG
	 0Sj47yLfxVeFlF4sXNVEUUG83FOFObD+b15vZl33zweASqBoo9TnB7Zxn2UqtOcUVP
	 Kcwy7Y57U14nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1C4CD37B3
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 14:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169496070870.10403.10058913217951341967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537214b76b321d36f57092ad18b549608f79402055abdff3922e9acfa383ea61
Date: Sun, 17 Sep 2023 14:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694960708
