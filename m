Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB33D5A67
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72303C43470
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663582253;
	bh=DV/K1HVMXKV5lBb+Ar/AbFMei4nP2yj2R2sDr5ibT+8=;
	h=To:Subject:From:Date:From;
	b=FKsTvXIDV5XZ4ELqWjArSylurzPQJzX2Iu0Wg+0ePpFoR5azOpI1CrIq797s0suel
	 z/0+vkErfYws+EsTBCz2LpJsMysOfq7+vpdhNDCB2hPIgxZ3IuGGtNlYTrZfn8ahbl
	 0n9XdqTQeyhXWJ+61T2nkJxCdN2+S/JjcAz2+fBVCzkYXfj5ETsIW0E9DtTb8ASLJf
	 u2L4CQkzTlm3qCZigRMUDG7st+04jrsfWZnMCS4vYGFIYR/+n7Q3PBPTWXpYwNxqeZ
	 ah78oAj0HUF3bRtwJQU6l81O3EMrLxRs7C+iaduV88fKISSHRhSOpqG7XlYcD8jpYZ
	 8rqIGdxc+Pw5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59944C6FA90
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166358225335.12355.16919109481291530367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc80456b04bc960ea3808f42f1321a04060dd852bf8d3c5d78baff58afdb48a0
Date: Mon, 19 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663582253
