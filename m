Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C379D657
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7840AC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668932454;
	bh=7HLnnr1jxBQYo+jZSiolPuqC/SoFxo3TbdFpMdxzBV0=;
	h=To:Subject:From:Date:From;
	b=hmn4JQIOcISr808eMsiSVXhUyokYtLARaT382kmtYyxW72GkjIyF4g4dZF6b0kVTA
	 6Z2yIglkVeiS4hGVFE97m/S/yYNQ9IKMuifJMnu3uZeOtwGrgTbxWzCbMWvnCVoCOl
	 7bXLjXqoyQ/o0+x3EUkl+Kdqhrb/AlJL55ZxyX2RMv4GwhbJ10K/IMPvFARuLl5eTR
	 WsTKEvQwrouIMVvGWMxQlVuCiSs+NaV0p6aaZNKIPCASXS3zoEufJIfMaPmCE46x1i
	 EZic7ib74TyepA3uUYLbyMSxfrQ75bjGkxEW0CJvXet5lA0YPsj7I2mOGXr9EPOlZP
	 1QutjtpyzG7rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BFBAC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166893245434.31512.11282404594951257462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7700fbc7e96e555af7c6d9bb3e48978fb261bb5b3bd6c9cd49cb0dc1f720ef4
Date: Sun, 20 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668932454
