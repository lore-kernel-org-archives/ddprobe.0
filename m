Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00C7322A
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82250C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671376287;
	bh=PlJ8PQCP2g8yQkv/M8zTYN5TOv3sGK91NQK4bxbilKs=;
	h=To:Subject:From:Date:From;
	b=CrHYrddgN6b4S9LxjzYGxZTv3QustNY7uKm/pUR46f1PQcbPs9zXY7lVo78lsICyE
	 ngaW+eDXJ9yY4GUVmwg0FldFq8llsOxGEdluAtBTpOdrDI5jYjmcmd/zPyqdahpu2O
	 2MVCi0opR45O0FT6ognLy5DsOn2YM0kyoQTe1Q8OmX/YvAlkGi23G3GwB9QE5PKkI6
	 hxKKMYmEnHILON6CRW0joqKOKgKP5AP2IRxgFtPe9Y8LHYm/E1Ft4tdyjloLPPLChJ
	 IGQWZYA2KFuJbvmj/pSDv71XZZKWdDyYlP5qh8q9jsnlmROIVqHDjxd4xsat1f8lSl
	 rjitYB1T5TlWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D28C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167137628740.4890.15667342657405933973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c0f2e9f86458fbcd72a67225f20518a634ca89da7596441ee18d86455d9af14
Date: Sun, 18 Dec 2022 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671376287
