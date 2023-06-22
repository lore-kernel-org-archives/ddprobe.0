Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5627163E
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 00:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B22C433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 00:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687393988;
	bh=j6uJl11SVHXJJCPkhKaQbxCOILRmlXZI7hUKNg0Hm2M=;
	h=To:Subject:From:Date:From;
	b=VbvbIjlaZRNyksafVpOQnr4F9lumNPEEc8CpvwtHKYWAj7VRCIXECoSah/DkW4AxE
	 Kb5/b0tZGrOouiK68jQKLvKABM5q7RdyendVBbkZoUvyNC/N6mD716G4ZgVleYjXPj
	 ezCl8vlVmUWfIUEwGPZiHV6odYN6HLk/k9ToVEehmhbeLXESTZqqw8w30RO5v1KLvT
	 m6lSEs0pqqAy/SIGyHvowAyLad4wOPwcPcXZMusk34mwRei8VJOgZ232UprJiX6+tA
	 7MBKRnq/snyXwsDIc29sf5ko6/3bT+8E04Ub5MWmW69MlPeW+vDospnQj/KpiHe40d
	 iwFueMKXDJ8Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A553AEB64D7
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 00:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168739398865.7672.17676595793862702649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de8a0a71d0f442862458b23dae3d93d0009aae0324ed259afb93c09090d1155
Date: Thu, 22 Jun 2023 00:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687393988
