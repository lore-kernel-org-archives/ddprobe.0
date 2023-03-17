Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4280E62D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 04:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E79ABC433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 04:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679025605;
	bh=obTAHUqE79aQy9xk+pMtVsFLU8Q9rWKyvvvAQU+JJSY=;
	h=To:Subject:From:Date:From;
	b=ScT+hkQvYUp0mHVZ12lJk1laITviP0dtz59ggkHlKW6uRFhnehymwwa2sA4jFo6bD
	 l/637QjRwL2SY+XYHX93pwXugwJ2wHhUn3U7CBCBEwwnb6BqcnMtyxeoN6WYDbgKvA
	 InhsejuLQMR8j7lNwsEmdoIi99063KSNBIIEI65wqNaxHm8kWNAN6sNA1bXwibpbXI
	 EEW6bnirhFREmNfiVDLdoW6dLwhqAoXtjW5vL4xIP4uXx//aIYBk94q/TfuX2zkJ9m
	 /a0Cb7zccbKxy1HtJrAI/UWab3Z3jhas1GxT6/qAPjShhq+eF+5hMVmZdPOAZRuE0x
	 MkHn5eIM/Yqcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C684DC6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 04:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167902560579.12366.9474375802813363578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9c42b61112c751d81a1449c39ad103b4548a2c02c555d5aa016afc8607d8bc
Date: Fri, 17 Mar 2023 04:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679025605
