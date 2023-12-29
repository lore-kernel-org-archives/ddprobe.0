Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B41814A9E
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vk+mfMVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7841FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703892496;
	bh=pOhnIcgZuypVBunB2R8cxbImi5LBDno9nE4v08L6SVQ=;
	h=To:Subject:From:Date:From;
	b=Vk+mfMVWGG9VLl1SL3oqdaEHVqPhcqi3Wx6hyQLRH3h7XB49DqNtQJgfNq4bMnB6t
	 UN00u9AqMOi3GDjonHciHfBZKn5aUEKqPZjyjHulcg+Sy1SX9xwna3MsGp3qgpKDkO
	 xXYjUj6Jl+P0ISdla6kA2ajBvisiAykRdEc3a15P9fbsknGnIHCvRtUBmXFTiQpKsF
	 4Qg5zxkWaZa49JHhd7NSan07UpbZTWrljs6vSkDX1FRy1tr9UC/x2TDiLiwgf2D1q4
	 GFdL+odvi5HjFYEvYX7PH/z9hmNnLl/S7mPwG1uDSiLHkRyE9Bksx7gALYMXy9d0VB
	 Pm9VK2aQmdfbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D60CC46CD4
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170389249637.15051.9996447938276322312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b15bd97cc466922d09e61e34114c9173c4e719932f7491feb5bc7a84803c01
Date: Fri, 29 Dec 2023 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703892496
