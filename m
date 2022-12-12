Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED1E1FDA
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E033C433F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670839287;
	bh=TlSa/cVzrEP39bOSeHWxNGoCifPW3ynnI2IZB4LlzBo=;
	h=To:Subject:From:Date:From;
	b=U8w/uR7rPCMFeVzJbc4NwNCVuHVJioO+p0HuhY7qjBnWZCOsIhmJdfmHCophR4eEb
	 JocTMqya9n8AonPbRnQxqOdRehLk+2ZGDtHGVb64Mrmvy7kj92p6SMdnN69aXCPGMz
	 ILkwGLkGegGKO14OjF8InesW+2i2s2ODMsFxqzT6jorcPyl/9gJcW6t97EpyTjUzRQ
	 N9BghzksEOdog/FNL6cAkaOKE+t2tg3nTIvT/q/GLgSRQKlwyv2YUt/10mvbpvXU6i
	 nGkvSmPEBs/yzT1F0y6CD+5wXuK0wO6XZOau31eNvP6KDf4iiaRoTIshcztwv0cZC9
	 6JD6j9lvsGNrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67910C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167083928741.9488.3816745127304032779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f0bc96a93f0b99b4e7d80ab3b8f56417773d180d85be7c6799283bab4758d6
Date: Mon, 12 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670839287
