Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAAD3D6B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E76C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665770453;
	bh=fCUxodiYKNm+FqVhSKbooDZPj1a3AzRQdaqnHTaLTCc=;
	h=To:Subject:From:Date:From;
	b=aAkyid5+3f9/T+aLeQx22C2CHRNknqnOPR9CpU5cCWAG4xOkvC5HMTudR7zc3ZRqy
	 Uq4L02Zmi4VTVbn8Hl2vWxH8j2HOWVDjQI5mlKl91l86lRolYOVbafl7ecDjPiaoqG
	 5+ZZI6cJa9KUoCx0NBCPzFhjzQNnVdjfu7ygKmZabYg1S1II/RLwIIZfIR3Bide6EU
	 Qm6Cm+dkVSEeeAssd8ZvP2j7iVG8iTCr6nRkAMdGIKaulZLPbRHy6kp456PtYpqlJ8
	 gMrsq3atRDbJ/JZKnb6swtR9nOix7nccELLCLEh6K/oU34gdG8XHI56LwYGVjGUN5J
	 vKI3KZkMOkGSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 585D8C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166577045335.13578.2249455036664301004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a39115eac43b1f098a89dbf7253e2bad6f981472795e0eb373ea8f6b97078a
Date: Fri, 14 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665770453
