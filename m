Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3804F33D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 16:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1618C433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 16:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682958005;
	bh=E/u3hpf68RiQyMe7Pl9Z7U2MuIEi7YFCbpfWUIL8Xus=;
	h=To:Subject:From:Date:From;
	b=GponAsm/R3PmNIjHWg2leXHSqylAAxTQzyO20RnmDmcFfW5Dh+wpCHHj335HYoi5P
	 45G39ANFz0H+gDP9GSXLexbJgFtbLRvmvnh8sEjkQrpfy3cizXcMdTyA9kBco6KaG8
	 K0MRfYVHhb1RR7SehiqHrProeLIhQhd7qD/gm5xuOaV9IH9VEg0/WJVQlvmavKmSxt
	 h1VDTzlQIMbet0n6FHmy9yEmP7vSfjmxLZ/Ns1lsuHWOB3r5+AmDilPgplsvxG5xe7
	 SNxLobrxVZRwiaCL4bqftAlX7gQ4J0a1HbvaPEM4vrnZK7cx7pbu2SE6bvy2Paw1J6
	 xJmeFlYcvbxzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D3DC77B61
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 16:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168295800577.23017.11253642086641557632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4bb4562377da6b87661480c9469a05f3d2ea38f1e2324a6e3119f6cb3cfd26
Date: Mon, 01 May 2023 16:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682958005
