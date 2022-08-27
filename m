Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F2D15A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 04:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D88C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 04:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661574052;
	bh=nHp0Ub3ESUKikKhYocE9CzJGDdY3YjXX1+c1HtxEN8Q=;
	h=To:Subject:From:Date:From;
	b=kd1/ZdxLeUAF2TETrVNZdjaF4xt9OsEmuODEzxa1yG13VFjSCMtL73Z2/KpFISDVu
	 VDW9x2t/chqhid6j0Eosh9LJPkZau0PUEMBeG9zGf1ind3993YOasJP9Mk5YQYuutr
	 XQqQh1jKhMzsx4hvjRs0DJW8SRBoc/jZA/Ia8nTUpO8/q4zoyIDM+JHYQ1cZooT/rT
	 vhP/WPOYPOjFcDY0O+WJeKAFXhMUgW9AY7c3gr9UnM4tV1+xbjFasjMpsirO4mBK+u
	 +rbYtLFj+qvSWumkDwu8UASMqNfY1aEqZD3VW8U/OeIkd/ZnFzRHCPeHWzN38AZQc8
	 WuAzZUmR1BnZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58330ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 04:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166157405235.17470.1603568486716642424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e9c25c35c7dec874d5113c637ac11a7297a9b32fb9d5744f6fcfdcec844575
Date: Sat, 27 Aug 2022 04:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661574052
