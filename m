Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93024A35
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 719C4C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665164453;
	bh=llOtyd9P8xDD1CmCJIjlCTaFyWrgT7ZJkUffwF4vMNI=;
	h=To:Subject:From:Date:From;
	b=TXeHnspp9t0UzIK0WEr/kTXQyzw/GVXHxbXWulKCbhNdMvXkRI+XBglrHXVChZctA
	 Y7fpVYWZlNbmHGINWIplNB8JXIf2P/v1s1J1clorcovOS2twMEdojsV6KmLh3Bwr/I
	 vONSJDqjK9z3xeIDJ1ZXJgSeSGeSKjbq+NApbTgFOc6pzW/nrpC3PfrFQQTi1JFX6l
	 Eymy/5HOvvoeyPNk4Zm2xfrgNzXEYn1Zw9CB0O/tEpDmsqajp3hkFKAOSABYWznirv
	 GI1hfa6NKQh8dOWgWeirygObGMqWDX9Qsf9kwcAiE/A5r+UzeNADI2QjNzQDxkfexO
	 g89KGoGAWs99Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B94C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166516445334.23394.10975733741339017387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4784375546a07fd2dc54cc9e6c98c1604fc5c4d704cf56b4c53471797b85a31
Date: Fri, 07 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665164453
