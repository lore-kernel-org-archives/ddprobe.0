Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4811A3D
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FBF5C433B5
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662008453;
	bh=Rb6ur6ZToSxtWOT0CLF25KSk2SXVlsKmIv/WOITrrPs=;
	h=To:Subject:From:Date:From;
	b=mI0Vk2H7gLL18Vdeft8qgUZv7aZq8nSIM7VssNcRJVuhk7hPX1yufmzmBCNkNKFzm
	 kFnHbpYUfyyaKA6AQroj1rEUqrpRuSFFkbgTvCWGf/ertwuvcLHUuLsZc6jxAvc6LG
	 rrIROxGcE9yEq5a9RoymzUt+2Plxwh2tF03C/LnvUu2v+0QEm6EX89x57zMMlf3xLj
	 BbXm7zeIgyjuDak5Eg/ZnzPs5Viw7VFzEC1rnooJjT7hpDtYEnM7YK/hJOvChscUHE
	 xcpGXP8wP0ob3TiPAshxD0aZjh/8qJENGci3/NwKNPD2hRvu7Moggvy8fjZDvff71w
	 hfxDhtaEZ58KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 553CBECAAD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166200845334.11476.15202540981900362055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261ffc4608a1b77e2ce4d6f3044b052928343e085f76e460c2c666394733d83e
Date: Thu, 01 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662008453
