Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04686625
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90F41C433D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661854853;
	bh=1hnKdvGpKaiWKVFkDrLNNtNClKNXjI+ZNE1OiXGTxjE=;
	h=To:Subject:From:Date:From;
	b=IqCiIW443d5Mfm3HPLP5yIQ9xXW97WEyzeU9ajyYg6ij9Y5zy6D30znVGEYkjL5lX
	 TX7G4gaZrTCVfMnobKE0K13Gw+YrBVYd0s4dtDRdOIjrovidqR0PmWeeW+xaYQj7e5
	 M/UJvm+XS2gir85BWXLGQ21yIELsvJ4SPlKey2ViNXIow4RyADJyy/3D6W91gohlIi
	 kHJ/Vo8gcyfJSGs5XPsYSAuLbql1P6AhfcjU8t+0jNEF5yIN9eEfjjZ8EvQYLLpLOb
	 eo0FdiZnTklL6fokLUEZl25EE8kHhNddW0ucFHDSk9kv1fMQL++x/7LUyrgeQwhwjp
	 lUG1QsqQKbdIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7963EECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166185485346.4172.650059843493046730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3573de155fbfe5b0447a16403ec10aec4fbfe24642517a0af12ca00c4b2224c
Date: Tue, 30 Aug 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661854853
