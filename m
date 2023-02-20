Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B30DEDF
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 08:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE65CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 08:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676881085;
	bh=R8qyhAqiBrkitERtFuCBm45uVASpFo+M5yudAcfb2cU=;
	h=To:Subject:From:Date:From;
	b=PhVTM59P39ZEuwszxlQZcTx7XLLq4sTSMRZ95rrJByOMp5Z7NRw1YDUWnmtM9vpGA
	 e1FK/nkv3j0qjcCaJDDXr8bfg7mnQhOE+VrE1TJa1CwYjvYt0Eovqxmsd0PVZqRIYh
	 3QnsD2KzovvXDMk4cDdwVwK4d+blfmCznzmcofg9zzQAD49ld/ecR5iTP/tePh2Z75
	 fi0VgjE/C2e4EBMYdV8F+IDWioRs5yaWt78jGLpDYw2POmmxuyKsF3rr/N48txAYmi
	 dDUOcBoq/cXebAcM69k+daQi8fhzvf2rNFjzWx4Wi6Ds0xOXTFABqhyKuSxuCzgvdF
	 ViFf+SJ41laTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C39C05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 08:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167688108573.21383.10013536570229248625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3790f27021eed2032ec8393e77c620f5bbd1ef65878c4955b241126f25429f
Date: Mon, 20 Feb 2023 08:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676881085
