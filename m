Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F2120E3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 11:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E89F2C433D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 11:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675079585;
	bh=6DOY/YCHUlhM9g/NMuwKftUv8Xj8WE6gOq2TcJbMpqc=;
	h=To:Subject:From:Date:From;
	b=jGUF8eA/Rlx4nESJ2xn2gIHZC4SokVyLJ4HqMU1JBAl4BHZj0ZOL08rbz9+JArGQ0
	 /uMvvDnB82E90nPsxZu5BpYL9t/qtwR8orXcfPSVe3xWEIWB3/WzZhRFsmqiiUx0xH
	 AgUWWUwLblMT0lQ/2a7OHxDEh7xlbxhyYnqTPG+L6x+8IA0aFSsib1wpvXaR0ObFDW
	 C5YdFj5MjsJsCTrztmwra/GzD0sCulvi1ggfPPTVXl6W69ooaTt7i9Hj28jW8gHzMY
	 ZVo9XR9OgSCkmHIttRotwx+Hsc9z5taowwl7ZqswYDKZRuDROyTccmAnqxG7wVZYYk
	 pWeEHqPYeiTwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2F9C54EAA
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 11:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167507958577.27555.674622992344108974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3743a06ea761d21a9d83b10f6c636a6499333669af2cb3ea41fff81993572ea8
Date: Mon, 30 Jan 2023 11:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675079585
