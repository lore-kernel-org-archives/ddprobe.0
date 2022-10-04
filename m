Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD35A20F7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B62AC433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664870453;
	bh=4TcfldoaLWb7l+FvZikZSNM5FuCKtXLQBiYiGHnzXvE=;
	h=To:Subject:From:Date:From;
	b=DKx5M8cdd6QdBs5X3sT2Zxp4v6LDVIuaTQym9jZmENPegth45oA6HcPkIsAcqs/LJ
	 GQvOZ44+DnB+j8Rt4Jid872pzCtml5sZJYXsqf0ZKA4uRBfm8FzKoPYljr4sJouPCj
	 Pts3ky9i+k+CuqMQN+uZsKBWwxjTholfIct3zYAYy0/5psdnUMKFcfAOg90QUVRBuQ
	 kFSpZcb49KtmM7QwPJ6rFgasxiyVoNapfWzI7NZYR/hSIZAR5JHYz6o6NQ3WiuyH0I
	 SKmgSFryTmpGZtRMvMaUuL8rKEIxtTt42jboNytnp5OZdPoz+OWFIwnXoE5r7gHI2H
	 c6GZKqahBk/Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54ABAC433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166487045333.6007.6789794303328868196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40ecfce83ccad40a2c786a659ee9d4e753b6ee7d1b0c80bd88eb23aca60cff6
Date: Tue, 04 Oct 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664870453
