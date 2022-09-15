Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02DC46B6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D32C433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663256453;
	bh=FVvZIBrH3AaxQauTYLV85/jnykNKES2kobOxdqQBAyc=;
	h=To:Subject:From:Date:From;
	b=N1Fjm8T/Vt/HOVXJok0sL5PRE4BtCLd7ilPCAPGsUj40WZSEZuwZ5I9l9JJo81Zmx
	 3vagCCwtejqeq45s5OhLEKwa/2nb9BDVeVm4GLuJQDSGq9FzB/EMamRnGWkXOpaMS7
	 T78/8iQZIC0q6YlmR0fmqgor5eK039eRqCcrb8psahx387oAHMhAqE2nzuiZT/b7nE
	 pPfMDoJq/fIrk7/OoSlIrPzKNLHZ5CHNQWLiu4oPF+XzBKBatU1YcOFgFY3Ef+ThS4
	 WCMxDbwDctvzCA6kZG/JhhXXvCYVBtovuYFAvjK9BznkxW36tlysCdj+vtVnfh6iNQ
	 CjWOWl8BxD4Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5146FC6FA89
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166325645332.15491.11429538942180893902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ddce6e7b68cd0fd6847bf55f6ffe0b0a7061dd065d0735e38f47d3904166057
Date: Thu, 15 Sep 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663256453
