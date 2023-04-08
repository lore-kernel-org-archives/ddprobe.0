Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2841841
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 11:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D5BC433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 11:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680952265;
	bh=PBjY1M+y/ptc3sitgww5Sld+GlN0loxxeW6Am3wgI4U=;
	h=To:Subject:From:Date:From;
	b=StQwd8TheOMkJIsj1ESfgj/8Nan37t7DX5MJsiVr59HhTWCNFX9XhMd07mBsTqe+d
	 l3YAWcyp2iG6ALpoAGOODO2bh07IThx0ibnk+W6Z8zSEetW70YqbKVGh8FqnwIE0a1
	 gZ4VT5uuPKfwwjX4afKmCFOfggog2V4Kzrxy6/qb0Aae4W9Tm297e97hqRcRVz7Gxg
	 GCf2+u9uIUdeselQO7v/YQcwWwaWRZGvYKazpbMYbbehn3hnkTqiFltNddxtahTofd
	 dHfw/tkYSdlXIr6fhAePkhggELiHWpuYliaUPmq10wK4DDwEP8YqFrMADSGrMkLFAH
	 qpKHhke4SSQ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BCCC7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 11:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168095226576.25757.12057697649996866473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172153dc25eb0a2390c5e9e44d24dbea83b333d871eae00f35a73a7b54ac9dad
Date: Sat, 08 Apr 2023 11:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680952265
