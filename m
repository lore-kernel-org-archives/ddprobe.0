Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D6217CB
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 03:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CE0C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 03:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675739765;
	bh=IWelTU6S4UMpg36k5tjzP7UDCIAcPOmE76fu/zMMMWk=;
	h=To:Subject:From:Date:From;
	b=GQBWMco+WmMENWJvaRBmq15aa+I/Qvsid9Ti+W5jpkYNITtnF2tyOBa9/ttZaYgCf
	 J0stMFy+iWpsTpv8LEUUeulVCbyd62DKLWmK6slhwdmNVWrF+eMklB3ZEMLCqPlOrg
	 JFlI4uGMuihbOwITMUGmJKEViJQsL+LN8SpvTaynvMfYftynVN3UWCzXfgafdfsIKI
	 AUFUj4hrztwRDix8vViQ8KeeYjLVgD+FD4rgqDV6y30+fjoEj2WRHfXc7kYHGka1rh
	 fEv3STwpFcfYL4Ugycob0qnQ1vYk0NhFIvp1vy2Q1zg/yZfMd+4wJv+tFwNsU3zdRg
	 C9irI0FP5Ftrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C7EC61DA4
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 03:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167573976574.539.11664966915358762986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f3bb227dcb6c8009bf75e64b85fdbb1b2af9290736c67bfd2a0b83a0a1c1dc
Date: Tue, 07 Feb 2023 03:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675739765
