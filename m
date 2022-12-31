Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D639D23B0
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83209C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672470087;
	bh=XoQt4bevfG5w2XTmg/nYNyJImNuu2r/JPwnO3MB0MNY=;
	h=To:Subject:From:Date:From;
	b=cF3Fq6MZ/t0NQ1aktBOSJGuPQFdcxBpYHtfTsCWzKpfX31KjzSh0I5Fao7yWIyqu7
	 jGhSbjlcOE82JAOJhOHa6Z0yDHN1RkkB+j3bZztf33a04/2gs1UHMw8268PcytjX9c
	 07jtRs7MzreX/VuLMGb50/eIssXIWGs9w0h+EDjq6N44IKN15UxLlNNcDWsGu6OX6b
	 wDFFroEqxERvO7nhws8jOTw14eEydqUibZ6sclPn0+tsqvU86J/KwwOrl+dAMA2vsw
	 3mMdprJFKd0q9I3Lj5a5AfXu4CCvF4cewSOHotrgK4ykaKcP3csj+rJ/wQLhk0lMJU
	 ttaoLk+/JiStA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ACB6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167247008742.898.15739411052437042335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72dee03a20660f7a80d3e203b26e8da17531ed77045105656f39d334415771c
Date: Sat, 31 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672470087
