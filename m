Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65A76FBB
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 872EDC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670715687;
	bh=ywS5DN1TndyIo0aBeonDn0xPCi0E74vpmzYJvDxsfrY=;
	h=To:Subject:From:Date:From;
	b=jgw7g3lG5HE5+JmipdPb5cPqZOL6Xaw9z9KBui/UBaH6p4M7L+fO4z9tiCSmiYMI5
	 ipdgSx6LsxkoFRESFCVJJmhReaWXrBpzm7OJXiI+vcNzDrB8reGumNaqQRHe1L4vEp
	 /2TwqlJExkzpNb/qLTGkE6TDPSf6TkhYOqGotona4wCH41jCfKz2vA88vJPl49bUqp
	 +l+lp9quSgj9Tb4SWLOD8soJ875go7yWmSflOZCkf//zOmeWYo78AFdExY8tqclDxA
	 UWzxGSqniVG0/pLCNmcK/JD66LT/75pb6F8VrAXau4cSS7Tc6YrmcM3Rx84p5fAAuU
	 FBCIlbxVP0hZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B5AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167071568739.32123.15697979628489030207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fece9f70d1057e183efde25b4876969acc8af204e75b0499aba0dc9986fe2581
Date: Sat, 10 Dec 2022 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670715687
