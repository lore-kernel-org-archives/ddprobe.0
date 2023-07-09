Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6636E7F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 21:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EFCC433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 21:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688939228;
	bh=NwRev9eExSyN70C9DSVGfNd1+1b5qsyqXZvhApv6C54=;
	h=To:Subject:From:Date:From;
	b=IuD6/+Uwn9afe4678P92EJNsl913crkUoBauXvPgRkXazh2zu/g3zxDCn57muAbxO
	 H6eI1c3EBXbbC1fkypOqFcPsBkjCwI/9scva0Xi+5pgQoya1Baq5nUZjxFzV8vq1ZN
	 v6kguMH3C1g+92gKpYu5tFpeNoqyRzutHTVR25sKfdS3HBsUKp7HHCjjtUEKB61Pxi
	 YasjCmrwXWwETbgygnRJ8RwXma8Vz2zQBub35x2y4+QfOXOo+Fvu05y9OAJGHEXtUa
	 SyJ4gFcjc1GjjNhT6w5WPosz4eMkRbuMvG9zmQn04e3fiUCzDOCmISugOBjoh5MiR9
	 IhxRI2fpQzRGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4898EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 21:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168893922871.3352.15514973406240350995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1fe19737bab7553765e1878a244e7f7122536fd6c2e7447b8b6bc4c45e96129
Date: Sun, 09 Jul 2023 21:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688939228
