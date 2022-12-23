Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94B515BD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FD31C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671832287;
	bh=8UoagSSWpvWMEU/20SjjkDTQxDledGgpdPw23OA1mEE=;
	h=To:Subject:From:Date:From;
	b=OqVN+4VFZOWt/5qC+ztrl8EtqZluDU5G9PglDSHpBy2/spAk6WZPl1xMjV9+iF5gy
	 N0u9bLCQhqUxx9YVVMi5oFL6HfcRoSWqL7UHgxthTyAd1LK2zNDbFi1nmhmfADgyKA
	 rrILu9mszw77LNjV7SgG2aUO3iMfCMWyFbWBiBBTy6IYyWph8jr9RHlsYAmoxdAaNQ
	 /lqNcOnEe7VMgLUEd5VaGLn+7yBs2FC+LfggaOTeLf5S2b6YnnBcZTa/Pu9ZmzDl2/
	 o5NFDzBcyvDdte4ag4gZ7pIj9YjIR/rLGzONLcQ09Lc3zfka7SabLRCAduoUugkPhN
	 DP9Xv4qyEs/dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7362EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167183228746.26508.9724464455064518949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa301b812bda66e608dd70e43302a06b03c220270c249ed93f7120ccebd05d2
Date: Fri, 23 Dec 2022 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671832287
