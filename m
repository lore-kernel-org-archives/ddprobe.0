Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7F8110A
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 03:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F2EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 03:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691896988;
	bh=IgUrQuzMFsXeGTn42ZMKQYEUnPCAwldPR7zPljcD1ag=;
	h=To:Subject:From:Date:From;
	b=rSfkzFUA9ayfpTGrQh07oK8l1LS77W1s8rxQKEYRW4JEVZubY8++xj2S2iGLKtcap
	 YpdvjWaEEn5tEX9l+tTsW4EKp7ufe+Zy6fQ+TVPiJNvNXW9aJVSYnl2vN0lL2tOrgP
	 ziR36dH4p32zhq4IxTUSttcsCUBaE3HsCMQ5OTM59VEbqmEWXWDqGpmSYuQKpKUEiC
	 qikbfJq4L/Hz/t6SUSjvHvoJC9JlgNqgo94cwsSN2UhmSbbhn0NHEfzEQE7WGTPmlY
	 QV9JCp6dwWhEvGKKDcFfOc5VnKcLGw+eBzFsJtTdc99hI+xJpEtbPtLqe6sUdvIrBY
	 NFEQlB3jw+b0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09C9EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 03:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169189698869.2908.10059399130621811921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fec9dcd75da8d3360e98e88f7ffc9cbb7077695d2ef47a87510d1cf5beaa975
Date: Sun, 13 Aug 2023 03:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691896988
