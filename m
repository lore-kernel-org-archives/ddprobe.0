Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB5820EC
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 11:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60DEC433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 11:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677411365;
	bh=ZQmyFfXTQSvOn3OJ69Ttsvvln92BSmo+XN7uqN+W33s=;
	h=To:Subject:From:Date:From;
	b=Uv+0q4MMVqhHYHHoglv/GdSdASDVqh3EaSyCWRTDcUD/VCcr9araFGBLCJLEQfaLq
	 qpO/5FuFmLViR53rlZUjsiqFhpvjXoPLyJmBJsSkf8ImpQywHJqdkqgELcvdVnZzqQ
	 q6RmPcmPl/iCnma9C2xPRY1uN4gce43zgVHZhGHrIjhnQk8V6ExeOryEzjTR3yqBCi
	 qbn5nPaYnq4MB0HW80aYBnp9Z9L4CO6KwWNZCW4O2L546KAj2leis8XBosyxup2wUz
	 lIedCtNF749NAvlrfYTUZFum4Q4jbWR0VPfj1nlLmv5GuP3LHqk2uXVipgodlTAX5R
	 BrRrU8wUmlvYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEED6C64ED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 11:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167741136577.29745.13422435943015882039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa4176c3512f7946b9d6fcd57a7faf8e0ead1ccf371237735b892b602efe0cf
Date: Sun, 26 Feb 2023 11:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677411365
