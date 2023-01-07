Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04AC210FA
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92D74C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673062287;
	bh=N2s6v/hOKCbrdWEuPN5CM/KMt5EMeSrhGI0xDSUZDmI=;
	h=To:Subject:From:Date:From;
	b=c0GfSzZdjnAvWazEI3pdbzWSk/NheXRb+CXFbsyKSLS2Sb+sbFhccQkuNab6qTrhp
	 XEvU+2SwwBo41uCx3bKPIyueMLpSGsdoSBX+YffR1Nbse4XNTNaZjKaybYERJ8JO90
	 mHM+lNsP5zf6J0SIW59J/f5cqgm5y/O4GoyYFnfjrGSznyfJpxELDAGPnkRY2971G7
	 gf28E4HOA36TatyNZvKObWEvimYJWqjomhlUAX8lN1gR7UEBaxcJfQHBejuujjevoD
	 ktNgPDO1f+XTNgYKJySk8uro9HsqdXCx7CCcSjzCHJTdqc/+1o2V96xe0UrKpSjjAa
	 6phzKEtl3jtEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 744EFC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167306228740.12278.10614425774472063533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b37d4503ae68350398c813a8da7dac1699f6ef1235c112388b03a28636c5ca9e
Date: Sat, 07 Jan 2023 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673062287
