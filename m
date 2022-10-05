Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC13746AD
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CDDAC433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665010253;
	bh=LevCd9CSdCjvRDpFCf8ltgHfusxLyFE5GNtYFYdmR3k=;
	h=To:Subject:From:Date:From;
	b=jqBuLR3MzgOYzzVKS9nRpcwHbWwCuV/bK7UV3cpza64/lKx7mqwbRfaeeqvB/usDb
	 WbDfncm8EGMBrcU0OOx+F3YYODYlNyrAbkdqoPFwj2NZLF2h53a1/tuLgRzb2NVzbU
	 xijyzTpKlsQbR+bJYtA01/as5C2eNJ7hykr/xgFPw0ocIz6kIL5fHLlraUdfONrfz/
	 uQ1DvtQgRk0WW/tZ1jr4zX4ta91N+2wfSqvlu6jjHWGuPO7CKB5bZEKGOXJkMKZL4T
	 RgOgRrFcEz7P6A4DypmvqMDHH8qyDblSgv5Ga9/sTOZqYKb4gz6A+Uz/qdu61ZADD8
	 2pOJIWiBmITUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 623FCC433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166501025336.30620.17318222366429287145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd99e159cf9aca8efdc85697a8e37aca8cd8d15436a568234d19939b69d475c9
Date: Wed, 05 Oct 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665010253
