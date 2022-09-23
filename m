Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18EE33DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B283C433D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663930253;
	bh=lMCm5u+/QjDD3eCIDiKytFKj22bV2MiBsRYN0c5qvjE=;
	h=To:Subject:From:Date:From;
	b=bWCjwajxnHaoQVgsU/tueWUNz9Fh8B9iowRijGiuhIOBg9FfnqMAB2jkEuL5ISu/2
	 BXIxribttFgeM9fp+qQX0H9I9fVvSlErWYvOXZzpz/My/6XAkskZI5b8Yv3CAtYrSR
	 NIIByZL8voTb+PqG0YaZ451q8S8N4dCbnhmriaDd+qDz1IJGyCO6mIPk0fS3hpF7n0
	 FlTOR8kCz5YIx0eEAYDzCEhhiUT6ibgTBSD3/zaHARIERdlcAhkuXp0Q3WUMOIY8Ze
	 tX7X37scnCezi61J9ngMys9r3Is0Fh98NeV1/8Dn6yuoRGCpR9rdQX8235+B3b7hqQ
	 B/nP7tU+dXAzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F692C6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166393025331.25872.7009618644187231428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50baa1b376952cde8384c0f04a0d9535e759b5a5e766c44818728a5d469df22a
Date: Fri, 23 Sep 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663930253
