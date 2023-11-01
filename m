Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A1210A3A
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFJ+nkjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86CA5C433C8
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698880096;
	bh=Uggs1JjyIEPa/lzsmVhILUqDROYfW4LzBbfmOj4a4/A=;
	h=To:Subject:From:Date:From;
	b=dFJ+nkjfSY3amN0+6qbiLlRhaGMd+hBhVreou/y7zh/3L/gLWfP5vtwsPbRQ9DnR1
	 xv6XTVFgeeTOVCSlySyVcwWy6R+TzdA48oZMnswGdCfzuUGzcqPpZ/HdbYEitajUkr
	 +dTb7Y2nUbe/R4Ay19JrOuYhOA/akMJ/8s887d46V1EdwlZqSTjPfZJlb6fcZ4CmfA
	 MDHH0AtvlrgLw07dbvXGiwThwYZfy4qfNZzz6Yo3/22KFJXaxHskqdWlcIlNVg/4XS
	 R8zaVyCUiETtTwaCQf2RS/SuMfOteT8CRr8H8q2nCm5dA8qgzABd3FgwDm86GydAx7
	 t0NakQ77gKiRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B1BBC4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169888009641.5472.9414858238579170662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 884e224becd1ea3ef1b4e7903ec162d11bef3f1862ddccae2d4785aff8f4c745
Date: Wed, 01 Nov 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698880096
