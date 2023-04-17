Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3651C07
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 07:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2876C4339C
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 07:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681717085;
	bh=bU6jQ4LJav1+3RZn0Ms+cF5szNycYN9jIJtTitJhsCM=;
	h=To:Subject:From:Date:From;
	b=KMttVstUUUrr9yqxB9qxDWMgmPKBAV7mmo5p7D0Jktp79mnZrZrPeD624yJ0H8iVC
	 Ynobgp/6zkcoCq+TmH8bE9zZUHgKMm2kp3luEel5lQfRV5xWQTtFKCPMtG5FxOwoEP
	 mG8ZKQiPymNhH3GjJ7nH+bxfQAqmeIs404+allDqHqFzNSM4gjabKhx9jk/yMEj2up
	 BQpJth2EqIfjZ4Bl/U4nnZD37sMbyvCZSE1SHHRTK8OUe6v+lK/LQwO9zcHGnPok/2
	 M7qU0PG4GTfoG0Ms1jMgjbOOHuuhPSbMrlOy86m1mg4lGKh/689xer08mLcezh3fzE
	 n3+f6sWmO6UXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C009AC77B70
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 07:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168171708576.22660.7835035314732166329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae1fe2c14d3c8fe8eb5865234b2dd9f3c2cca452916ae24867f517dfb59d794
Date: Mon, 17 Apr 2023 07:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681717085
