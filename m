Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254C423A7
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 08:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB68C4339B
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 08:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678697825;
	bh=bc/ql3UZzZYLn1ggwkKsfOvnIBh7HyebNyaTm0AtYwM=;
	h=To:Subject:From:Date:From;
	b=BYQlWo/MMRzD9tuWnUhY89eWJ+Ev/PbxaBJVHS2NTbgmW3p5SdbTo/PUt/qKtzHUL
	 +rXuFWgEQNW0HB5rNtPWq0K3ngQ2g+sXEDShL02NEBijAfEhcFdR/dlXfgAANxVCgq
	 w/BIGxuHIFNSGVk0rsTXAer/Fm46PfCMarxqMnAGL1qfbDeOB9St8AMRbM8lUt9/DT
	 8UY4CKt+pjzFclb6u3k1fE/MB6gfO/5pYD6G1JEAmzwbO5+spBjctW+fbkkYX7u/tU
	 T/t1ISPS6zFkv41B4374CClrm0uRluzNx+EjwuwIXPczaCqLgEPYfu9OpLlxebIyq7
	 r08+HdicECpUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41C5C74A4B
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 08:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167869782573.9406.11314239803002142753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb1f3f96726888cf1573a58aa3f58a14a0a6c656ffa49d5a1ed69f82ca29a87
Date: Mon, 13 Mar 2023 08:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678697825
