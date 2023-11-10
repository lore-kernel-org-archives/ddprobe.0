Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B683C695
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vANsS44D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77EA1C433C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699653496;
	bh=DitqAbUy4rw+oz2gnU15EgQGqA6HCL6D6464yeITFh4=;
	h=To:Subject:From:Date:From;
	b=vANsS44D3Iup9e2NkKBkOut7LknKTKz9WbfND0E3ikwi5TvoOWs0y4gqflJ4KbTwQ
	 ujFyjjI3iJ/Ax9A/cK3CWWCgsM/xZIjyD//xCcne4c6d+1uyP6/m1H7Lfa5GpCCYlX
	 z18MN3P8fLQN4KsPe27V7/7yip4zjT7DTrWVVzAsYD0g9HQTlVeJF61DuVCDyglyvv
	 p8pH/ABIUNftSQkCNPOsa6cwf2bOCL2g80/JpsB7ENycmoI5uTmxsfT65vlB+pZitM
	 KLpWuZWCEageRye+EDomRHHBlO+4Qs2ii32Evk86fSrpIwUSRNRjdCiq0b8NOGbH5R
	 hJaoitP/FwiZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6178FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169965349639.29537.16965208852314605051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e628a8c46986d0fdfd57dc9d3c2f4b6c2739d32e1fee4518c8c8c7cfb95520
Date: Fri, 10 Nov 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699653496
