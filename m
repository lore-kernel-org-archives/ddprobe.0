Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F077E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 15:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3719C433EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 15:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681399025;
	bh=LpuubqkAZLHV2PmaWid5Mrhus6kfidz4YlUxO9D6w7I=;
	h=To:Subject:From:Date:From;
	b=Yltyrp7dZIT6oI7rgFDklxmwH+Z/mmRUX7uhNYVFypbLQlsbA8tnEWEaw7N4gVelH
	 j3BeUlkjdsGG74mlkg4tIYPHL0W/oA764cxlQ4yPyBUvqLLlDKRxGWgSoI48SNOxfk
	 O6Z020Cui999xddBEe9UnnFPqj+NEqirdAynLMLEr24Zx2mb1k3UtUBPq6BdtA16Xm
	 uFSMwsOl+im8eLF/dmy35GIDgGK7WDqxuypWtiJFH9fLMN2WbuJv4gkjCT2L9YEc+g
	 5DH7LPfVrUb8z4GmvTHXXSjTK6dxhYAThu6emrvJ97nvXSPxid/5VbuaMbejrjwWn8
	 URwIzafyKpsqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B919AC77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 15:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168139902574.14407.18264856925666782581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b446d29f5aa59082293989cc4d574193fb3cb27ff1fe3b2b99e5d4e4e69050
Date: Thu, 13 Apr 2023 15:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681399025
