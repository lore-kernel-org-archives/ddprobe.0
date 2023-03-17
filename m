Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B5A36A
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 18:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D7CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 18:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679079125;
	bh=D2HzZJKQfTDtYGKJKl6r3jp3XjtuWTkgSRVp3FZPxXw=;
	h=To:Subject:From:Date:From;
	b=vQVVrC9PFuECITXdSfMgdRryTkYqtfnFkwZdLLfCp9XW66ULZv1SYPO0BEYNjerNv
	 cOEQT+us06r9uMPVMmzMFgaAuNG0CBtP9ZR1ydZyG8uXU+f9fRnDRfwlJrJLgy9p5j
	 s+sg5QKeRwiiSeSLlmypAnFTmYE9FyejVpiVg8Y7qYrjoJIfKZw3guFX/iDRfFgvLE
	 MXhR/gp7IJZRoZYkrjXMLnPmZfZDI3RkcS8u1cl3idX1A1/3Tn+UfI3lnIIYbolQUy
	 cdXNNfW3qC9+6Lt6AKTj48Os65iIZcCfgzR1cuwqunb7Sq8wcJg8iQsLELJnpx3uOD
	 RLLgNOoRTr+wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75AAC6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 18:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167907912573.25739.16763839094036950288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f54261136f2a6afb7128d26e92efb391fd68a1ffc794f278a6cbcbebbcf96c68
Date: Fri, 17 Mar 2023 18:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679079125
