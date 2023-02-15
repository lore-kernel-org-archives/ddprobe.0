Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A7CC5D8
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 19:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBBEAC433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 19:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676489346;
	bh=CaiFp4gM/ic2oXo0KXMtDoPxafxNPNpg9brZhSlkSps=;
	h=To:Subject:From:Date:From;
	b=bZugZdJOqg7c5FqDLOtGC1cTvNO1sxseIfuDIBjBF2IfrivSepDFSmKGrm7ekzgA1
	 2mOvkYE9qSrqk3i1ExROi4jhgCKXv31gWDRhTi0h1R202Cslax7W+SqWMd7aZjvpdH
	 X2Mcl1tz0q3pKErqtJsjqXFI73pxmG45+HbwzDi/EL1ucNugFJef91evOS5d+2dmb+
	 EDbTnGX0hIPqjHB6Y51Vqea2yJgxFdZ6vM8GMq0lTKuBrPSqeMa4IcRbnSAgf7pcLI
	 tjqzBdilwsHYz3ytOdQL559zFBwBbzQoJ1Wf6UGmrkN9yoCyKLdR3B04cTngsjy0s9
	 6lbb9vLuoPDeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C88F1C636D4
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 19:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167648934580.14996.12376361758258800512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffe81b6ca5076e6847ff9b296c0ddc28cd317806ff5693a0c3ff1838e0fa5b41
Date: Wed, 15 Feb 2023 19:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676489345
