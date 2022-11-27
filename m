Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D067A190
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA93C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669509654;
	bh=OFQk71+ppb3NP4FqPUxtvVUNuVNtRRzIzYTV/H4mv28=;
	h=To:Subject:From:Date:From;
	b=CKBXH862uxwgw2fAPwKpE2zM8YBw6kh9/m/MqgMGpWGzJ+sUu7nyYnj8ml0GF3501
	 GYTcHp79GkbWUS6fTW8EhhN7TU0nlAcl9PrLjLLgk5VK7LbXbFjDbqarW1RtDTBjM8
	 oewZYq7PQ9sHvOJZfHly6fcwL934Zr3KsEKr4SGZXv+ykDLeDBFfj11DxZ3Ov7s/uz
	 RC0NLq4sc4G0SS8+N38YaQc+AaOD25PsJwPJaIIZl+mc9121FFsU9EygNerm1y5cD0
	 Z1AGl1sjG7MuuNeDwmGIdgTFK6EkcDaBOYrzZz7px/+9tLHAFA7Ktlv8lhUabFcDjm
	 hs6tzZiztwV4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53359C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166950965433.9515.16697337844249954150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ae1afc915aaee2687c2f959040944a8192951ea6b0217a147ca992773fb461a
Date: Sun, 27 Nov 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669509654
