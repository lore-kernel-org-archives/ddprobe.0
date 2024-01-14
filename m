Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185501841
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeiJiZjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86338C433C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705205296;
	bh=5AWIzFMaG7zVvFOiDwRfBE3YxEZX0A+4wg6UvukS0BQ=;
	h=To:Subject:From:Date:From;
	b=MeiJiZjTDAVvv/aU9iLv9mur60BisDGlpCBtUiWXeaf3EpKqnVP0CDH6Rw5gEDpes
	 NCyfzR362a6wnkS6RD4NehdKyQsqqGZXe1NAo52+4V048ewH2lfL8jWSO+fgyaqEs3
	 bFdO6XCC4rFoUvla7vtoAYoTKtalktheBFKOPY1FRnQvlDIhosIFAatRQ/rVediSu3
	 2kF7ZWRdi6UG3jtLTbfCJoRM2ekBJgJkICGiQYmhE0raD3NopjB7srXJIE4ytvFjXO
	 d8m/7FMo6novfxUeoAeAV6rfaI1fJrp+npqxRg845Am0pB400ILU0oEpyRsMhoG9n9
	 P4esk0jfsIO/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65981C4707B
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170520529638.3565.4911330531059619597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4edeb902f1ebf4eb8b3e4793c8b8856d0ba666297e1fb0b4241a0b345b6eb6e7
Date: Sun, 14 Jan 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705205296
