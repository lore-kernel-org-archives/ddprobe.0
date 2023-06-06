Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A75E3360
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 05:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DD4BC433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 05:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686027726;
	bh=gyMAiosV26XjggUiyFWUsDZdN0y2iCqfoHTTBJp6arI=;
	h=To:Subject:From:Date:From;
	b=VH5dpkvTXZQRy+DvUgeg49LzvW9wT5EXNge2DG/0nKtimIEbof2lcbm5hmc5IfliN
	 JRbMRmqNl3UJy5qUUOh3TCaOBOkqgHMNfhcYGwQRUI3n4nLpJoqBpfjfssTwzuZ1Ra
	 dtEq5ilgVyEP0tj7ab/BOGRY6dr5delk8N9oydXu+l9Wwu1BdwXNMQmcPGz6IQLROG
	 /sA8qPbjsrvghCJTTVYpFcBCmztAI+elBhLm/E/Pamu7BIs0FkXPOCugk7InxTq74/
	 lyeCcsDoD50rfgak+Oa8Apukf9p6gkat0wyrzsr05FfiD8njM+8S6JRcWKFEhlQfxw
	 hDeILMtn7jc+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8B25C77B73
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 05:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168602772586.7075.7989484027468563193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9537c6ec798774c267f9e8b47edc5953c01a9948660bbbaecd9b7d4d92abd8
Date: Tue, 06 Jun 2023 05:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686027725
