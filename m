Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034A011CA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 12:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE7DC433C8
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 12:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693225448;
	bh=WyygJW8X14Jb3sJUM7XSzDxz3uw22cB2WTCW2L5ulN8=;
	h=To:Subject:From:Date:From;
	b=lztM+0jq5RDM4/jf9ax61fsT9oJpwn2k/iKUwu+vWwhcRt09CxkSFkfN/IhbUEy8x
	 +Kv5BSYhwzwBGYeCCXOSELedIU6a5ESfqu2TcZ2BChiFya+kca3QyNinn5KYfottcQ
	 k2MT1FJRjtz35tsme6hI9R20RrDWc7CiVR5enbnJOz4seCcWTEzzTRWpncIaVSt8XL
	 pWM/38V1dQrQoZfDgEHi74/8uW8qxVShjdvFvlGTju4y0+6+7Z9xBXWeJSb/r0o2RU
	 ShriOf9Nnrgb3sD8xuqYEe/yReuA9v7mS79DGuA4rhLwtuE27K5Yv8UfJzd72BejhD
	 T4Ss1rYr6gwXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2006C71153
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 12:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169322544872.25728.10175433758993652052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de807ed03689b80d4a5ee893321e08721cb95577f4b6562ba7a719fc0127cabc
Date: Mon, 28 Aug 2023 12:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693225448
