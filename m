Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534B82C9D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 23:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04D2AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 23:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679095326;
	bh=S/fNv4ZgkzDeDRW9SHHAzL4eH+n78DL3TBetK25SFXI=;
	h=To:Subject:From:Date:From;
	b=sZDR2Fb/8Mk4s+UpF2wuNlR5MNsc86UUJ/A9LmSri8QJTAS1+f/78Hsv4xrlOCAbE
	 SyRvF3vTCzi+EdyN18NcouRLELfXnPcry+DppKKV6vZkJQIHrJFJGWwpwttELMWSWW
	 XAW/Kz7aXMAng4nq6EbDbyaSSau9mQcKkVSuMHvFa2qGicJNHMmbFEQovQLmCLv80V
	 a2QAoyKbDiQN2dlwssSp4AH8KtzTQAAA1nfnzf2R1C+W+m58DDEv6iQLgmhXVPxqbJ
	 rOBJRqHQvnpL9c5moEHUm6Z/q7h0HcFtcX+rcbK4JrjwllhtA9xpuF/J6IkFT3WT0K
	 R1UtT2ogq39ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D39A4C74A5B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 23:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167909532580.5074.12306598746995228235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a42e6b98a16ca6a2e11431d8e1ca16e1e42f6591ce1d9dc31fd6c86bcc1090e7
Date: Fri, 17 Mar 2023 23:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679095325
