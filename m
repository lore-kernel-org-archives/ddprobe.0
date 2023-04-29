Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5953253A1
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 17:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC191C433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 17:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682790366;
	bh=Bl/co5uuvwMz0Zo/Km7BlSqe40aeh7vlzXa/D3pUA/8=;
	h=To:Subject:From:Date:From;
	b=tKVWESp+p3+6wUAVEP+cTSBzlwQhzW7vW3U4e2sHO3GWIENNl/z1VVu7m33yLHWok
	 ZY1Tpk0DuMOqbD1OmavbtbFAwSwysMuLbl/2j87zCI+EiIDjZOAEU8Bsjd/jjHQSq7
	 0dnbtNwPOOtRDN+tnGyCJ78RZUTNPWpY/1YcO3dz/PMQYsnj9M5zm/yol8caOphX12
	 yxtdrPV0YoEz8v8fDw1EgJNfhmnvzKhtISOfQKg3DPyasUPpQWUWb47MNSSbcIaWXH
	 mygLxrqwqjj6otCV/JszhDDDy75p6jYV/CqpJE+Mj4WAWCQvdjasC24R1/NOyN799T
	 B4SrZrM+kuGqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC238C77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 17:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168279036578.12286.9443479255463214716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c8d41228af1045061d72f1fce351eb663aa7bae35e42618126a303e596b8f6
Date: Sat, 29 Apr 2023 17:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682790365
