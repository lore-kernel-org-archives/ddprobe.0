Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3C311198
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQzCPgCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B3FC433C8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704599296;
	bh=EM0C5d+yRZTEVRWVF61tIiqZciR2jtzxmVEoa9roSKE=;
	h=To:Subject:From:Date:From;
	b=DQzCPgCPltzSoTO/bJNavp84lCEp2lpUaSO6JI2C4CUlP55VxCOOKKv5u66FzX56d
	 tnxyT1ingl0ddlr+8V8Auu7B+Gw16WfKpcntfqXz5zEsZL0MmyibyT4QNK2Qqu4apS
	 EIJa3zHiFCvrfQ5OAniPBr6RnYS4NukcfUzB/eUo2/SvXX8ykshb1Y45WkaSR6dfGh
	 tlXXMvXiJObXH+evaAUFnqj9ZCT4eOF2JL7/sNu9g3wrlGfhaiRYEeeMCnHE1+XIbP
	 QN9nfyW+De0DsNTWbA7gJDSshxY0v8wdOQHfWsqvxsIPefPg4pPnjYNJ0sxMod4/HL
	 /rMTFXQDA+JIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C733C47077
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170459929637.31071.7961475162355479409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7c6a5270c544cf42afb5f2bf7080505db7ca3c48293c9e4fceef9008de38db
Date: Sun, 07 Jan 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704599296
