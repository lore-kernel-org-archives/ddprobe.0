Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735E2253CA
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 15:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E3EC433C7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 15:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689609068;
	bh=wx1Dt6i6up152u7XZjSEiET68phXtxF5t+C/4aH5TFA=;
	h=To:Subject:From:Date:From;
	b=mt7JegMnC6hnxOtDiGicU5o3TL+9c+Jkf/S+iJncbMJhStStRFfUd3E2BW57m7skB
	 XkE1G71cRwU4sI46JtBf/4IiiYvw7ihyt/N/Hr6OjMDJMZGwZHDeN6Qa38wIMS98AC
	 D8Wv/xi76mBMAvbMmtdTijtbNZWxKx0RX+8wEL/Kak0+GOWyE3m/gXJSbmWxCNuIzH
	 71OQX+34BfnAcUf4KKKcSGOFzJGPppt+FhejgGPTXE7qA7FitPI+OXJmUPr4csxork
	 BoUJWZQVm6/ZYgO1GGmEe4Qh0K1fTW1iyPP5GBIeQ3ms8tx+GmhesB6suqDtiMiPqA
	 Bqdy0e5gQWvHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5B4EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 15:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168960906868.2637.13069051467239307510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3accdfd651ff6c958c3218a907163ece80b57173031c38fc249dd99d893de8d8
Date: Mon, 17 Jul 2023 15:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689609068
