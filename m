Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D636FC1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED98C433D7
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668441054;
	bh=qFBAsoT4VY+4gs+tlXUb3FeQ8nh0PbFPNxQDQ3bZgOM=;
	h=To:Subject:From:Date:From;
	b=N68Q8jNYmmRJe38DEuhkIDd9TFrwnqMGPtALklhwQx5ALQvWngQZCu5NAqqF7jWWJ
	 e7vnT7MSg+Hudp+2tH+49fGpEtI6i/LTulu1o9ieqaKkgnDWH5dH0B8Jf0OPlsBQfg
	 EXdsNsTyLyocJ3Vp+j8Kjy05y9vciDxV472ieqxAI1bHgSyP7AwL7WCVOk1H2BbUoH
	 L1CNNzZs5EMOkn5MNHExzR9TdT2tEQaXFhi4uvTihNxKpcAPLggOxVGnqSLF34WCqT
	 KCwPY92VBnKvyjctBMRi+x7TqCFLHKaJu7sU29mbBn6tgB02gfR6fWRyDflRnsUyka
	 lkz/vUjhIPdUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524B9C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166844105432.10498.8909421148568470150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3427b3e0ed0f7934b7b8e5ed8cd3846c809c1ef361e08f627ee51629b87b0707
Date: Mon, 14 Nov 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668441054
