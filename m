Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCFAA495
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C8FC433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667947854;
	bh=U4Ii3r9qy36ro0Zw636lgLL+2jAr+MUz+KRkH5epmaw=;
	h=To:Subject:From:Date:From;
	b=fqZ571aI5TrzUC75qwLo8COwwfhFuo/xntRDb/RrlA7WthMcWAPVMsr3hhzbHJNes
	 VaKwxTdmGWaBpE/M12paAIWzFx9YObiW4/WeiZn7Nfrxlfy6ISdliZWos8I9ohCl4Q
	 4Da4OvKVLDEISTH+iiBF9jFSGptgXasQGOmKmk/1jjA9XX4IGQ5rvTpzkWDO8HC/KK
	 lTXzusk0w8g01RoRKa9XcZlyFyhaas3xJ5yG0n9KJcMscTG5r7DzH/tiO/j/ssrkcg
	 znu9NWyKA9nJgC0aFhIYkyms8irS5cwnJkkYwHL2XFYbNHQh6VpYWlLX6ZKP66yfPn
	 8Kty24WKgE/xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55EC7C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166794785434.25988.14439484655319035143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c55b9f0c940d4932c33160cb61cf74535d3ccb0497c671647f0615a0524b5c5
Date: Tue, 08 Nov 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667947854
