Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1C418F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88462C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672626687;
	bh=gfs6fyoK4OaA81MHkEvUFqUMbGXhkqztjmb+9FpcF4c=;
	h=To:Subject:From:Date:From;
	b=g39lP6QHNMmn1qiKb4u0OQVv/GsANMNgObGhqWx8Pq7pzKkauvIu+wuRXR7UrJdIw
	 hFPG3gYHhYgkDOhQ1TPxcZ+ei67s5tTHCcKnB0rQKZgkjAEUAe4hJLd7AHPde8mNvD
	 FdGszhGtZKIMBjp5EMcHdebOzCZ98E35II976pTuebXAHkI/o7YKBEcNkaVLGzR2z6
	 WUj99MzLoQ9/z6PyIIDWrT1A9PKTjdYe7D7TaoLLH/Y/nynlF9QKyfGZwjNTOAeKnk
	 aGFD6WFORWsi12MD3ND4OoOt3auf1uAdCP1oUjyLjrprPKBpAUnQfTgD/OaR2yvR+j
	 FLKj3tgL5vIBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BDA4C4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167262668737.25659.7511667076510788345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b2d9795e255ffb8a667b5a56152222f7c2a78fa37cf22682c55c81015669d6
Date: Mon, 02 Jan 2023 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672626687
