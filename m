Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4B77E
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 03:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A36C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 03:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693885448;
	bh=P/oEeUgfNs0sqkdstnK7klpeYeg0LV5TbYWtAHcNqGA=;
	h=To:Subject:From:Date:From;
	b=RzljcxbSoWoNzrecaKhZOcqmkcTvRhTAAorRjCp4y1uXl7wPazvBPdkJRJUxuw0pC
	 Hsm39nk27ggbkzfhbBEOfnk0PGzUZk4XsGhpdrSWKqveW9kbSrRCMZ6PK+uXAQupe+
	 mWijt1PLaftstSh0LS0O5Gq7EPA+s10syu7Ia4+tWRVe4IxpETzhmDjj/66lnWc/Hh
	 MILLHB6yEVWgkddy41UYEAhTAxXRNzop316JNJVGciwC6z128AWfLVD4y8drvrojUm
	 QpAU253AAlZd0xtNoc4bT/KBnb+H5rCypBr4rXcURyTevEzQGMrC6rHxZJ4MQ5YdPl
	 jRQyFt0SBKgvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A565DC83F33
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 03:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169388544866.3087.8341467562468142464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397e0e84706a9d962ac0392d4c3db5d3f6f1ab0d75f126126eff7fbb05ebb3cb
Date: Tue, 05 Sep 2023 03:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693885448
