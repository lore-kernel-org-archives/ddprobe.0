Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C414E63D1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED7DC433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669047054;
	bh=mTrVZ02qB1NAJWH8GguHBwzTbcecqvBUpQb4Rm/EFp4=;
	h=To:Subject:From:Date:From;
	b=TXvSBLjGXh+7L7IHUc0WEKuWHzsY8OTY97UYEF0qLKBJWdDQ/Gi4VaeHEmRnf7bip
	 YmQTPDtBH5eROZQ0rZcLZ2a0ShX3UKeIdNsarbVVajvDMEodA45+M3WGzWJKDGd5ay
	 J/BCP7UJtXSipGAcodDySW/z6Ywjibgpy9WYi4k6ba9U5T7QggvEgP3YW23k93b6cp
	 FuaQ4cVXflYhko032/TfFIAnV+JeGo2WnAMZbj9ksQddg33/rc3vbQ7Lm7I0vhZuMe
	 68/GhrrTOYn7nSGadgctKcF/ML/+BhBM23lhMs2ScjHEOdAOIH3Gqtvbi6UqjfkUDM
	 z1dQXRWc0T46Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54876C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166904705433.15746.17458056108313065261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5b06ad2c7ea3b6f43b9141e34e699200d0f3ab9975b48b8fd58073e74e6ddb
Date: Mon, 21 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669047054
