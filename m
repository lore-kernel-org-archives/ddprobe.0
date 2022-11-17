Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B679C3D6D
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66C5DC433D7
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668710454;
	bh=fUG5CQTQ9x4ar4Z3AiYFzDQtqsmoK5klCXK32dWASls=;
	h=To:Subject:From:Date:From;
	b=iDg+QXeusLIhjGWnvjuktwNH8EVC+BQP+C6SsTgcmP3VJW9QP8mpH11iWtwXq6Q6l
	 pABXj4zz3p1oS1fTz+/mRdkjVM6nhSjDDcjJsU1gNYcJEeNpkFULEGvExdI/JQ+Pu/
	 Xp2bnOG3618plow9hmxsMKvMSUqkPybU6DOVWXCe4r1Z7KI/N9+42uVmtmTYpbDZo1
	 5jiJFEdYpSBOYxo0LvIAZ5kGaCB+pTzCXZhIPmyCfW1Yfo6ydEg4ksC1hlMC13ZU1T
	 SSpQzg+mv+SC5gym1dNwxMMeziHlSeWvAlXXdf29yMpP03HH2gHslDuBleR2HsUPee
	 T0bJebntJTvmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F05CC433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166871045431.7483.559566976389019473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66112edeff52c67579cfafdf38f470ff66915de2d7a3ab6ada20dbe6b3049a6
Date: Thu, 17 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668710454
