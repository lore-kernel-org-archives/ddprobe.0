Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C86805
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E07BC433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665112853;
	bh=nkveYZe2S+riWa5g60/+9Ei+oitZkXMykkbfBqxaD1U=;
	h=To:Subject:From:Date:From;
	b=o3vgHfFDulcnEjwLyPcjZlW2sNH+isOqpXPyN+wkwNYKKLM5fe3RkbBI25CI5lIOt
	 7xj3/jipNplOuktG3/r2dNAa2J3sKWBaNjNlIl4QX7JnpFpee1PbYXEx/jNNISPFXV
	 a0RrN3XAI5hGpIZZn7Yi9rFSYoCI49hTQuQaug85tHRptrwmhCde+CLFELUU1o1JwT
	 VrG2YAA1Xm9jMeFOSCtPCUwRIDX5m2+ZbCZcLf7TmNuA0D4q9+kNROgGb58LurxHX3
	 PVJcCdX7kUIfK+qrdUMex8IQh3WW93P3iZTPb4XFX6prDb1wv0V79285yM7juGxrI/
	 DvXlS4zoOO8pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 630CFC433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166511285339.18380.10705500781028894267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ec53c00994a70696281fc42f17c0c605f35669c8e508493e800cf707a91459
Date: Fri, 07 Oct 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665112853
