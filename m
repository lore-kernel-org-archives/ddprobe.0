Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5173BD2E0
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 06:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E3EC433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 06:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688193848;
	bh=HO+nvziV6r2tqZrBaA0pAnW2HWSoS7Ioi8RCVyo0wtM=;
	h=To:Subject:From:Date:From;
	b=G2MWGfg1RJjikiJ2Q0k5iU4hTXsHpcpe6Z7SQMC4E8neYf8WP3U1fBAdtSpuTA/Ih
	 A1DOORF8SG0IqLd7lzzanZ6CuTPTt0oM5BE6xFbC7ttQirQwFQtaMU49IvbKIwRnEO
	 2hDxUITwxY68Q7wuBnM1xqf91PahOtpwQ/6MeIN5g6UC2PLZhWs7jrGT/edcks/3H4
	 Z+LhxbHROCz7sDKMjxENpePMe0oHH6mOZhyUYit2WC54kYYwWbSKsLKW+50GtRfXhr
	 Czfzbw9NG5NgUGdR4nswy1laWaBcZKvdCCfnCcun6QrUVbypRjTYPHMmrhCc9HC0ib
	 aY5hTjUlEdaqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD773EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 06:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168819384870.5082.16903470955771934815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc01f9c6957c0373c8f20252598365a4c729efbaa25c1d1564f62b6f5f41afc6
Date: Sat, 01 Jul 2023 06:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688193848
