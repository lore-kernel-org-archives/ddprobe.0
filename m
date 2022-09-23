Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB3C3FED
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6243C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663950053;
	bh=xehNnzL91f5BYLhx4fOn7P5nQslMn2JwuK49guOwaFU=;
	h=To:Subject:From:Date:From;
	b=IoNrQ2w/L5XCZCOS1d/3hWtvj9tibEeT7mbNqcO7QCOPqSJ7CRk1m/0CBb/TkRWA9
	 1p+20J7YUUDJoWGjaAK3v8wolbmqLKXmaEydS4SZ4rNVmbO050jhFHtcFb/PkbIFBl
	 c4e6LbG/daQsSEnyqqX6pFWwb0e+/mpC4/5Gyw5QJkudfE9EoDSyzv0sTUHeIJ9JHj
	 3lqyKgAZUWry9+2wlrf3XKtGqCh7yiubQVLlJ6Z1vt57hAhWcGCISSNXvJ5rjly0r8
	 dYwPgElw0VwSJbkE3S5dzajCfZ3bGKAwARlqEuak/p4Ipf79AH0wtFucKya4SAt4VI
	 iiBC/0CIAkHyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74E30ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166395005346.23615.15177947921785742065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74d0a230e9ee41d10295e4f914030427c5f0ce1799f7c3354a10e322d6e1c4d
Date: Fri, 23 Sep 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663950053
