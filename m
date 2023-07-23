Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718437E4
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 01:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD094C433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 01:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690077128;
	bh=wJe3XYg2YpUIEQdbgOjh7N5C8cxOvae1EeypcomlOyU=;
	h=To:Subject:From:Date:From;
	b=BKKFB0WGnyAE2AyLZX2zgyojFpg0CjG+9iLkybFcnci5rS3Y78pxTNoSFh1v/+bIJ
	 B6HKGJY+qkdqqGArGC6kZRLGGUvmH7O/m3ejDihTh4Pd0oyjbBhW2M+s4FFj6OjLih
	 CCJbGCkAi5QsIATu/L3xGOYYGAsUSjHQPvJrsFcCO8kAJsDjXH2CcV+11FCn2DSspx
	 fFbODkimLvcWB6UIePva1sISmiAd+TmP5kvgU1KNx/OnYjMvUrV3yUjG/TvB7gYHCo
	 X7ECIpSmnsL9fkAZbssvZH+lERMwmsWnJsM+T7efAqGJCvKo67s7KZhas1dT4GSxHN
	 UR2daArBbRGEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E2CC001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 01:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169007712868.7264.5538713293695588745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 579d4654d9240ee81e2dea08a41b02773be143d970953bfe54962d60cb8bcf19
Date: Sun, 23 Jul 2023 01:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690077128
