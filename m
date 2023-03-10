Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC507E1
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 20:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFDAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 20:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678481105;
	bh=kstCwOLZiManJ57mczra4HijoWrwIYvhSgQqQJgde5Y=;
	h=To:Subject:From:Date:From;
	b=LzzJMvnFPGbwdrGn/Sqf/JMKql0aDcpk6qMyk20hTRSzZOQPvdIwpOi+NxNRz4Gdq
	 sz5X12KFvLNJOyFh6HkRkz59si7imMokj1G/IFuUK/16pStfIFDS/5tc+8e6UnkfJl
	 imH+r8ikhBiOGcEoMaoGQ0fh0AoKnx2I1kZiqIq6AtPba6hJ8rfxO7MS9Wn41MWsYU
	 PM4sEQLW0dd2kSaEASWef8VjYRKk+PUpFKJa88zF/GwIKw+z0Wda7SngPfBnXMMELo
	 KbCx3RwKLCbX9TO/D90GAbhatsDBQuqio/LN0waI9FceMDiw65eCvgkEfX/x/8CTx7
	 Y4GwVjSD5R4eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA212C6FA99
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 20:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167848110574.30431.15399085759103949781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 015d3487a07a3d3fa0bbbda634dd153fa8b0691108e4ffc5e193b2238fcf5f79
Date: Fri, 10 Mar 2023 20:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678481105
