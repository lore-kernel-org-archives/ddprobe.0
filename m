Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD7A80059
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghcHckYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CDFC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702409296;
	bh=f/XDLQyIcQAmwRmvyjNckyNxArZM+krBlUui5SoR1bY=;
	h=To:Subject:From:Date:From;
	b=ghcHckYUD6LpjMUEMmBfKrX07+E15cCZedo0s5cRJlUV9TOfWiisCf3BDuMhR/aac
	 LN4QCo8Nc7g8gwfJq9SmSqfX4j/CZwtnFWTsJCBTGFQt3DGirdP9wTmrz9uKXZZnd9
	 JZwKCDFnkTJ9hPROmkWYZKDGgf+W8PaPD3fuLFRxRKsStUyt6f70QBzIV2uiIilWG/
	 xVf0lyijA/Yb5gwPKmB453PI5HjlqWm+P8V1OZt/yS+A4O3LBQIVv+Usjv1kYvdiXS
	 qssAIjPoJnZKTNOfqySwvXVpSWqr02JUoSP4Gybtp4esy+Lv4TisoSOdo82H4wnlCC
	 3ft7gjmB+b6vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD17C4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170240929636.3419.9155352332190317891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d13afe7b416b378dd08e725d095aeac12df55593c9bc4bf434bab0c7dfd249c
Date: Tue, 12 Dec 2023 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702409296
