Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28197156C0
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7LzQdEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E85CC433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704216496;
	bh=uqlBfTfA3WUqrtyUOPo8sxzq9gQ7zBsDascLibCxaFo=;
	h=To:Subject:From:Date:From;
	b=R7LzQdEC5ZQF5VQ+y8SGUXDzwnfk5M3e99BuAQ+IqAYYrMsD27ISFuNeXGB9v0qHd
	 QF4+HY6admkVylGLFQkFkWqOddv33DHWkhO5+8PreTY+z/wx1pkDwdInQsxwF5Tc5r
	 zu7RDmVj+yddw0YmgPpobBZa18XYHRm/d8speEw4rYOKf3s0AxHcst2FyAEVrEX6UC
	 I9PfZjZReLA3MyqiK2uyiYcTYpbwr15/ThJy+3n6tgqgV4ohxKFabp1+QbvPF5ah9t
	 7EZdeSNDdZxqLFP7Yve69uByEXB3eh0i0eZ9PcyMcmBIF7Mtt4dezhkKEcSCx8sxVp
	 VpfDTAD53SE6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F707C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170421649651.8758.17446254770947066200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27cf6a2821206a2358722b9f10526e1d0844f6e63ec376e142b4a7728b55fab
Date: Tue, 02 Jan 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704216496
