Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7CE182DD
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itd2ZctA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 807AFC433C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700639896;
	bh=TlY+keLN/ALHxEv2FkgEEqbgSKSGwHPWBKZ4e7tnmkM=;
	h=To:Subject:From:Date:From;
	b=itd2ZctApOV74bvHh9B9VnvpjOpyfMeJZBWxjeeKJaZ8/8E8uIJvLaxtsGoHA3sI6
	 8pj9kYEyuoEOteWAZmZy0hoyJDMGBA0KeqKbPS5MdU150eW+/0uNk1C62QGaTocYDb
	 6rCayzSTEJ+D1enkd31w+/6kqRr6U/x1qMgoU/8nP3oTaiRs6TJsvgoKC8rcbjaFoS
	 5fKUWTh2+XCzwqWdsBGpAw31DNPeRl5OicB4JfMb1KwukK/YTmozcrqtpGZT5wU3U0
	 9+gHA9IlhyL6+WPWBPQ3Y81p9ukmhNxCmeW5VUneKdkJ1OdUpSdTjo16HC77LjxrR/
	 LbzxjVD9wF0Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61FF3C072A2
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170063989639.9430.9078286519644570788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 713fa24a57d306ef86f931b50062b93b4fda4a652fd03506bc45cf7619a95250
Date: Wed, 22 Nov 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700639896
