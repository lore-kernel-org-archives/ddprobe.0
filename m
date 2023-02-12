Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318B94A3C
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 18:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E36EDC433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 18:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676228045;
	bh=539WyMVoqF8poTM2beMeroUc6pGeJY0WQB1hD6ngMHY=;
	h=To:Subject:From:Date:From;
	b=s9kg73Gu58AxUrLOSbpCzc7hBOhsN+RL0F79k8pVsDJQ+iGHNP7sUJA+BNukDyuh8
	 0LUeSoEzFUhj3jK6vH4Gmi/KvpzPQUJ+XnZmGNDoWl4m4uqG1IyxQyDUuTpfBLbGxd
	 jt6aQcFKskrModD7RILQA3opXh96INRFVoSCek/6BaJSLR1d99715sf6u6j34352vj
	 t8/eotEW+36tdhbVU2NgA9kzpOcMvuP1D/kvewRXPVZ0xSHF5oCpFvCt6pcrU6hlrk
	 bgH+ypF0lVIFfDelbdVn2azfYcUaEY3SANbqT7/Fkv3Qn5uKWMhITLFHteD4gaZsgs
	 CphaEzckocJsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2729C05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 18:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167622804576.9959.16221399149955690607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1001cdad7b8427b2de4b45b96a003b0af3c52c4381dd0aa692beec8732215b78
Date: Sun, 12 Feb 2023 18:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676228045
