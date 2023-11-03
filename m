Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184D210E5
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSImYPmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85784C433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698974896;
	bh=OAD6WklFe918hDqCmPYPH4aCaREXI7XX7YRBuDVCqbg=;
	h=To:Subject:From:Date:From;
	b=gSImYPmdJEgMref2kZhrid5WfHByd/qE679PaKOOYiEhcD60hTAdSPFQHquHSMlPh
	 iq2gBWCjAXyUhlpBvk+fnVveWfBpeBfuER7kMLuaX+R4jbELtYDi3/Gh2Vc6otsCYG
	 d7r0PVyY6T3yecDXSigseKYIUQONXcemRXxyH7ES5G1uqQ79UP8leb0IJBDqcsSRtc
	 8nEK1kcdPPkzYVsQ6WWvW72ey6snSrJzjMKYCmDcsS5ph3CZWNWpEVaTuaUCUV51W7
	 cOlJ9ni7btzpfRSdXheqCu96cwsYEgmKLM/+l+/RiW8EKKIzA5Xl0IpCXgjFjW2Lmx
	 gBshgz2zAQumQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A480C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169897489642.31223.12338717531479553815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a90d72f71e2c004c754ff10a96f830454272720e9f864c4c533dff9e397954
Date: Fri, 03 Nov 2023 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698974896
