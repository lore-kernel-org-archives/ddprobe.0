Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A59215A8
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 02:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D222AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 02:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674786185;
	bh=js4B4lnG48No2G+8Cy1cxOoiiXAF2FPR2BKC4hrRXUc=;
	h=To:Subject:From:Date:From;
	b=R9vtzLcXPXAlxPXIMarGMrbU7VSo3mivD2txaDqUjHGQITr9uDUfwUXR50Qjb7yx/
	 KCGH9sVuz4q3ETwhjepvb2CSvk+t0RTiUE7Fq969WEZa9SehYiSHfvSojn1btLB7Gd
	 iJtX2cVAEKaiR7AK55mX6yQNLvOFKaQWTHoJv2v5OSUu57Vtd7ir7flU4ZnQDtncoK
	 Kn5RLwTOEuEY1qns7Xk8v5PBPefh9wXOA7omy+6KAugd75qNy2BUA0SEqqnq6q7cFv
	 WdF79Zk5vQVOuNDUl+Gh51uKC2kIdrHI5xtqWwsnI2AAY+1D9ZJZPpVz+hcDTx8MwR
	 7luPjpCmb414A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C59C05027
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 02:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167478618573.567.662957753707729748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbdc2b51b2fe22953b74b8b5f864bda58fe2fb47be832310be58f6ebe334213c
Date: Fri, 27 Jan 2023 02:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674786185
