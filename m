Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4097810952
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 14:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoRakuq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2A1C433C7
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 14:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697207828;
	bh=6+j0JdXF1z1TwGE0gOAqn4ZKazj9+plUWAaTao6S+tg=;
	h=To:Subject:From:Date:From;
	b=EoRakuq6YuNtZy+4v4CPRf48ybpciV8FdS+KWmTtNWE18YEVvzcN71CmQxowlEODI
	 16J74KVeSs95DlbCNd4e6DxMJcCVHZD1RWFp4RE7vCVp04LKVcn0LDpZRowkZIWenD
	 6ruvY7o/aOTTHMOSLKNm77WXLNl6VrYwuwgxHNhj65c71ne047WLqfpjsK090L+YL+
	 /LhzjvwARoH9miqYqZG+7D21oPW8tEWnEijRj1dOP32AhaaiyXXFRLuXUDtZDbTwx8
	 fmmAjrm3w6XxzbYX6JCQ9qeMu9jL9GnctwmkrpKP1p95OYKm8RA+7ID6E0DzzJQ1V1
	 nwz4ScLdT3khQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A36FDCDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 14:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169720782866.28148.1496510777867817872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b796792f3cef0de226c2cd3f49945d0731c56f8c8d74432f8fa1a1c53332167f
Date: Fri, 13 Oct 2023 14:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697207828
