Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA13A1856
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A99C433D7
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667566854;
	bh=DQRTI/1VX9GhWlEpSGPYXUelowGSaB3oCd4cRiThC3M=;
	h=To:Subject:From:Date:From;
	b=uDZCHW5Sc18292Y0GpU9wfUaGTLlUsVwux9cMLo/Sa3N7v1kD/GgW/yjzptlCM36d
	 vFnLP2BVqRQp7ply7LyA6qznptkTxAYg7Iz9/VSsqMx9mQ2uAdUNOtzmku00r+UxOF
	 EoZztloqthSiRBPsXdq08hGKPwoOnWDpvyU7j4QO5vlVqQSP86Yxid75MAwLihF9as
	 08lSGqd9nTS/wCE01RO5NJPylLNNZgJCkNZYqwz7yywfIkRy8WudFsSH7oCNZDDzPn
	 ZjNUvChWK/L6/vG0zTGu5yISTW07wxxGmUlm6a5s3LzAaT/4VMlv34B0vRHBpmFdj3
	 7Hfd93vDwZJTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59BECC433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166756685435.6402.18423857745185028646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26134f128d4716272a92a943b7d511f70e3661253af0ce5ba393ab78ccfe10df
Date: Fri, 04 Nov 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667566854
