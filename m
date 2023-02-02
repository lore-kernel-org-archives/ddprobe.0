Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF8F7E5
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 01:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D458BC433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 01:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675301765;
	bh=3TzbgHLEDozeX672A7F+DdH90+XKSdilMnvQH7RoB2U=;
	h=To:Subject:From:Date:From;
	b=gGLsiiRFF3u6c7T0fLRmXgFWqh9ZExd9pCqUlwG12O0MrbiRn6D9I5Fl31QbTLWuZ
	 GreJ+seVd/UtBqm/h5ap//V8wfkhcfwf6f+HWnojxQcEafuOdhjnEusE1/54NIpd4K
	 wqc6tcBIDD+pVxqU8sQde5JVLCDa7M9dwag8gETTmGHPlizrRAVfDl8bKd1AcxPx8m
	 RSmTu7chRvXq+D/DNVLC5eWP0UZ6aD/IzCWFF5iuAzEljevSHdhodNqunpU1EZ9fts
	 R7eI/oHk9nPWSZPb2ouwlKGaQYAypE6h7GCyBQihbhEs4+EY/+MycX7FZlNXR3BRKc
	 eDeSYHSscd7ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA2A0C05027
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 01:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167530176575.10668.14658046096080048603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7d64df57303edd6db263c2522d0f2ff58ab4f59f87a11e370f9e2eb749ce01
Date: Thu, 02 Feb 2023 01:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675301765
