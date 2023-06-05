Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7258D1C752
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 22:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED097C433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 22:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686003666;
	bh=zx7EaTBIE/OvI0L6y6XHvmz71xU8WmZopEMTJ/RBxgs=;
	h=To:Subject:From:Date:From;
	b=Rb4Wg02ThBBQJCYD5Z5cNJHQKXMF/N8BMpH/Iw9XALDkahjXUxfKDhDSfnx+iK4iV
	 ozRL623wYCTm34ZWNLYZFoeqUiqLlFAW3F39W6MyhnFnMn9Pf6G2vDTRHrY/8x4EkH
	 h2jIfY4SgwlO0/v4NecJiL7V/wINvBCD3VjIW9j9tJkZoD9DkLLhus1p0D95x4V4bH
	 koui47LcNyQ7bXmWSG4UCVKtDpGNPmXcwdLRAZv/1Z6b1gPOfwBMyjJZgxNZd6dDA5
	 R7esH6rXdPMa5wAYwLitLoHk9Is0wu4qSgzzCQyNw8wNSjsRyMj1AgRfvalxHLw2Jy
	 hH9NO+YaNR5PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B77C77B73
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 22:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168600366579.32607.9524051194782338028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46aa7013af16df6e358afdba7558597239f74962d259cc9569defe89492a1667
Date: Mon, 05 Jun 2023 22:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686003665
