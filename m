Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53ED526E27
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 23:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JI7IBtyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F8DC433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 23:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697327828;
	bh=RR1lEVeaYChfLxL5rF0o4p9Wj0dOJOKLYntfkYeLrQ8=;
	h=To:Subject:From:Date:From;
	b=JI7IBtyyXYiKkERlhBXdVzo0ZiCpyI5xQ5zq9pE2g50hHjvRVSTJHg1JpWcPrXoG7
	 ccQohS/TD3GrHD1eW19Yqc7xFonbG3/kwJEwzh93asajM08NiwIifzzmUvqyjxt3eC
	 tzO9NW6Kj1Lq8Bs42m0efdQBPjalRetlqK98+H5eG1D/S4dyWualkZREFYLk2yJxLV
	 gs6Bv/Pi+aq7oZa21c2jXqQSRzZ9haeqxi6ui2DtBlmvFdCxzToxHsgGdIHlheKOHk
	 hxNzPYfB2Oi5Yn9ok+bium/EQfRWP9tbbHs049U+TDSCKLhAZd++vk7glQfVowNXVG
	 T9uYuGcBTMHYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ECACDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 23:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169732782865.6374.1624895724282272553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba21ff90a15a6a70c82f46175be17b9e2b239de17dbbfb8ff950a578cf11671
Date: Sat, 14 Oct 2023 23:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697327828
