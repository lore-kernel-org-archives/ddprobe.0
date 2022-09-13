Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05C023A3
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B758C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663047053;
	bh=MrI12jNwyBQEZu19TMYyouQ21d7NWERvpmYZ7sMmx5Q=;
	h=To:Subject:From:Date:From;
	b=nVBMS2NxtLcEQVuNcpUeSXGm4hu7bqgMVX0kfBxYNO/agY1+oqhGwmzBKgwuCkTvy
	 VrSYfSuahmou+2crWUF38YrYAaJa3TT9FAZ9BodBCEvq3rZuEmTQrDGUPdefXUB3cz
	 K+vNAS4dyOkOQ2p9zSiYYdmO5Y/D2Cg0a6AFXDli+twWI/JPQ4Rfra7jDx6uSCgaYo
	 ZLuDgnGXFgSEZb7cXjvUugLhXEaRWbR5MYjE4ANLpfk1BUw0y7gdGn95F7wE3gRMW+
	 1JspCWVkLfm/jJtynhao5wWsWCNve94HdFN7tGl9QmFdXGRoe8S+y7IUiOhhuMjYCh
	 68xqu95WmgflA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 516A1C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166304705332.25725.12780822980934731098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd7f79db24bf66419c9d80d3f356ee4a5aab4eb328304d16a7cdf8dd6c905fae
Date: Tue, 13 Sep 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663047053
