Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F277F
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F961C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665098453;
	bh=eJGQ6/WB9zGHIyz336ioI4MVy2tE3xTpxl3f0ubMLuI=;
	h=To:Subject:From:Date:From;
	b=B1llbTJ/JrsjVqTUKPzwsQCPtS/w3zH0lrcZBLVMnN9qBbqs40XgpEfMHeBVm9bAh
	 6kxH4JGakWVP0gQDyggqpy2HlmWBffB3tIWBxN2BnTgjX0+ifTUattdK27mvPrflPu
	 V0zIJmqEFO4QKZLFw8G65sQ5L8zLLVobFt9cMc10wKrzQvSeFRkrop8vUlAJd7s40A
	 MyFrAG/KT7P6y/aU4IvsQS6T3+eEGYMEX1F3w7i9b0nx6zCqnbU5P9PX5rtm6OCVil
	 1NjhuU8ODY6os++RS4LFmAy551uTX5snG3T/KGtJrhggObLF9Y43dd0LkZDtF0yPlN
	 F4zUABBFe0CEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5570AC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166509845331.9369.6932830125293251277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff70bed8552d281d2ca18db335f4c04974b809739d23f1fb887e52c66bc95c99
Date: Thu, 06 Oct 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665098453
