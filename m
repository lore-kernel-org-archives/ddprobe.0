Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD5610EA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C0A5C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673841687;
	bh=bpT/xgmGdImFgNXNj9d+PxKPOAKeYszIDgDFkkhTj58=;
	h=To:Subject:From:Date:From;
	b=JWbpOQWwcSSO6KWuZC+dY30O1mAvc+lbp1mRHxkqa8pP4HQRHBt6KASNECHpVE6kF
	 Q4VE9QNXCA/tKNYnzqfr1+pd9LT7lWtcTQA0RynTYPwvYcnTcM7FL5yCueBNiyAEvh
	 8hXS+5TwvpQYmnmoTFQSD7kBSBGo/dxIObSpKsYL7memkNUY3YQaqSzNjRDqYaKCoc
	 v9BFwzGuUt4hiGC5TPDhWC/l5WIuLulTYJL5CBw+h9OGZYFHegUPyqzlrn6OH3w/kh
	 EdX+QkP6wPFsqV302doVkyJwpgyEpLIhQWS1Z+zrvf7if6tpXsLgtAyosOtZW5yK7Q
	 YI2qqGwCHvhCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A36C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167384168740.32358.7040718929778616833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4fb62bcacee323c6cbef0970b8f5e1175f5bda525dcc452761d589e2422f8d
Date: Mon, 16 Jan 2023 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673841687
