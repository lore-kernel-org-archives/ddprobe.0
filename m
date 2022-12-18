Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEAE0A29
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BC5BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671349287;
	bh=/ZLu4nJNvsmji4Afj4fVzRyyxuIPaRFHiSfiMoxGG1Q=;
	h=To:Subject:From:Date:From;
	b=ir7Y5lCRxtWUB74VODxtONHaDCq1U+LvEvxQwVkHmmTA6PvK2umR7kLf8Fd2hvMep
	 czF39Iz/WrkbjbbRivXj2OsPZftXdqGEjsMfaQWtZdDRZCoT6Hem+Xtc8BvyQIkBrv
	 qiueYTbYuDyDvC3yDeCSo0yqo7vuUChifMnPLO17+whTsQzRcrVoa2IpuEuC3ScPAG
	 sVIJCnoF3jTb5909v/8GKC99DYM+Y0nWlegmbzwPSi9XDhcyBuFp1aOba02N3z/OXb
	 eOXZnAkfvYq78zJW4g+xGocCMgK9AmBJNiTXvHRVHdorQ6YOlTairfCiHoRB1k+gcX
	 0oVNiO0CK8QNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D130C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167134928742.10574.14056986165281587097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1410968238b889e60f6d1c2ec333f277aa0b335536c9a33763931afeae0cb95d
Date: Sun, 18 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671349287
