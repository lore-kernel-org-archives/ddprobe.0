Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541061171A
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 20:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B65C433C9
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 20:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692648248;
	bh=HzQx4oEkXyqbKdySct0pujU+ZdAmlIllsvAPTbTTEE4=;
	h=To:Subject:From:Date:From;
	b=C9Whu+g1zv2fXZ7gqvQzIQ2i7LBx8nLxYMnsvrI6E63V3PwInm1nNZPRSfRhC5d2Y
	 E0E9c2exJwscWqgSa0QQyD00yWkhjCozYsKHZQ21+myL98mkQfEJ4T9fpDv1sa5ri3
	 vn4/EvXaRsjaTvCB4EG9HGMHRmtHDNbukV0bHls7paeWKvAmDooxzvlcgQSmREZFzP
	 vfbj5F0TID7xTxJ6I8HRdYUrE/8I3QOP1ioryaRv9W0F68BFZm5odSsys4NpqKlgrt
	 36UQi7eWD0KtK5B7SEYhqci67Kr4Vg9aLs1HbqKz9Y/r7NF7+jjCHSjN+c8yCbmh5G
	 CRA7b8u0rz6Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A3BEE49A0
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 20:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169264824868.23775.12970330976298015376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81237f338186768047ca38f5e361163edf443dda8ec54b66635082dca6938ba
Date: Mon, 21 Aug 2023 20:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692648248
