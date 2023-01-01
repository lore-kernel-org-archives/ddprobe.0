Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE84748E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86A1FC433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672617087;
	bh=DSEedjAdnjyBdqA2hztZzJuugmN0V6fBZx15KGhDt+8=;
	h=To:Subject:From:Date:From;
	b=EKhSdEqW7A1dBodVFSB156L6ifvRv/N3FOUUDcBTqMHFk+nu97H6WuYj0RUBJQTN+
	 64MBJISScxWHZ/HYSntKrtG3IDI/BKv/aWm230pRAIYcEjvRZX/giFTwRNH8Y+xbIH
	 kseIQJCyqUuNpxeVlq5DV9VtwCfbKPbxyWMl8HzqmmsqL/x7nyF9mrx203yhOyr5YX
	 k7VcwNP4fFMnKlc40n4WwIE/HMKctjsFYoNEEatYJgUEJh/xxgVKpzW7R2cxf60wtj
	 KsF5w4iJkTXe/3qKTN9ydDCS1AjCcUJjrOItmKmC/Rml+6LFYWSg9KtiTLPo5cf8Zb
	 dlpbZYBtknRow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C4AC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167261708738.11469.12121755751647307074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f785e730708a97dcd190f3474f469531ac421d33e670eee578cc2538a59dc2
Date: Sun, 01 Jan 2023 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672617087
