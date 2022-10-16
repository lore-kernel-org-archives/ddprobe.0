Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04E47B
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B546C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665963053;
	bh=CBBhG1gcM/ZtdWFbVvBcy5MsYqeb3dC5PereG1PKH1o=;
	h=To:Subject:From:Date:From;
	b=rgdlaDBs2ejA+tAFOpkJ/rVaHKkXg+8oNzlQiOsEuG+PDL1Be/tEHLgfD6kRRFHtS
	 2q4N7n/DQXDEyAiML6qfJvfLLtauepHs5Y+N5mJmKPAvBGrawamopebucvMcHx51xf
	 ode/T8QhYtnQfXYhZr8yP1FKmpb6qdNc9mn7Uph8xDU3MRk/jSfZvZZvyNb0qtmaxf
	 ePC5BMvZEaT8OY3dB5KrvCaah4qvCiJKQF0Q0fcUBvAeZoC26ZDBe03k474prp/Zww
	 LKwKsL8L+NJ9W3xfQQi1h6iQ5JZQpO7+YegXo0y27UP5XFJhOxIljKWL5cxN+Qv2Ch
	 PDz7NPApO571A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EEAC433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166596305333.3090.7651535020332332986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5187c994f852dbbc3da3c9062b61ca08b1b1c9df2f4ab37cab8a6d0f7b692aca
Date: Sun, 16 Oct 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665963053
