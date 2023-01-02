Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61A9568A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 890B8C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672689087;
	bh=xR8Scc6coVXDGcpJTLeOfDN99PKg7T/ELA4qywlOxpw=;
	h=To:Subject:From:Date:From;
	b=qj7H11m/DWB48nvVdxjJS2ziGETzN+l5HA2EU0ACwKowZNwO1fa4OqKxMYO6b6WW7
	 /2urQ2tGmcYJZMd2eGDh+DZYpIzgJcKVMkm/uFRaKu95fZ9CHBt7ggZA5kH64y/VvL
	 +/5QQnQ7nhZI2mStcF6vqZqyYv43XRIGKYfuCvmhDhMCS4r3KDkdVTZPRdgrmPgFUc
	 PreqIghqk4h/+7DbzGYjPCnb7iwmfcGk0puZTmAW6KxHiSY7YcJtjsyhhB8ccclyUr
	 +vWux4WU5nY/2cFiIoqA3QCKbD1b8jTtEn92SVIt+kCAkxvk2ZSdmtACkcxotpS0zg
	 /+/en1h80tCFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D711C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167268908743.21248.18441625524769742838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f6ff8de638d46977174295e62f3a59773d7d334b0113661fad7dd32d938f60d
Date: Mon, 02 Jan 2023 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672689087
