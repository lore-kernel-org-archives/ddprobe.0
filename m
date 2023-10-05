Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E5F15C9
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 06:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSZctvot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA900C43397
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 06:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696487168;
	bh=VZZO5kGJtY+XFnNwHWQHa+UXxEpHJwVmTnInRh1eKDs=;
	h=To:Subject:From:Date:From;
	b=NSZctvotbn0wiiEuzxRbuTtjaG/nWdSHmcWoMBdwzLtt6CK8G6A9vYA/dAmC8xFyA
	 Huyq2E0dnXeOEvMdjZb+nG8c9zx1KlbOr1PoR7P3DQeksW9iNU0pwfH4b9t/6aiADp
	 /hvnqoToyN9tqkuqDY6rfrRmYY1LZYhzrIhLi+8bOkudN+CfRqPE0QXjKhAmD0zh28
	 tscRgFPrIRS9F2/3qEcNGzM85TQ6qEJVPQ2lX0JBY6fOylbpGc4/Ta/tX3G5xTDhdU
	 UHbxihaKVMKfXpyD8XXsHWl/ZG0GJFBDYXFrtH4VkG81A8PN1pnTv5+yL6rJWtg2zu
	 hlUuZVK3JUJeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1F8E7B61F
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 06:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169648716869.7405.15874708326445405073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581ba09de43cb4118a54742f2e11195dcbcf29a62eb4b14c3d9f238f271a5104
Date: Thu, 05 Oct 2023 06:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696487168
