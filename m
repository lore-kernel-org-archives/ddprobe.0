Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034565CA7
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 971B5C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672525287;
	bh=XrgSzig+ykKqV59PUWbBPadWiziHgHm7lFQBzTuiNG0=;
	h=To:Subject:From:Date:From;
	b=p0SH/7zfufL9Dw8Gm/OX8oHHSlRReby7+pfrsnzN4JJZUuPkQsSrbu9636SOZJ15M
	 vsmEczOhWa95eFfZS4c6eXuhzdCXwTybuIRKPHKMptxjcmOtRm0UMa7l90I76EA1Cs
	 HTxvFoPFsD7T5TVmULoKiaiGuPEDDjmZkvDO5Mn301VpMbwivNejHOvvhXQ2Z8mEsi
	 IGA8UkcQEOVWh3LMylmCpJfYhCPgWE2GRDFMuYZteKYk5FGle7fJRjhkOCQuvLob0Y
	 5UlRV5WQi23tCHOrAzxu2zn6CqSBPDBrpHNVmSnzWI0TMXKuKxmJXt/BqNZsNOvUBx
	 BNmiZRpc0owag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EC89C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167252528742.10761.8596359446927369195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368d678b1640042dcd547a7f930a2ee42e0995e389df57e59a89752fac78a3f9
Date: Sat, 31 Dec 2022 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672525287
