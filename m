Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6030D648
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 10:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED458C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 10:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674384126;
	bh=ZESySWVtkOxx8RIgjZxFuf38pk/Nlh+DyfvzLfibJVI=;
	h=To:Subject:From:Date:From;
	b=lXHwzXRe4JUtpAdLzoyascE/bUZcUBdmuvEAbhfdRhkS82VltBnRnt/Ue0MXVVq6S
	 42OsWkj+4Ceor56Oqf42ZelO3MtW6pzIoValBtlBCsnjRsk9a+VwFy+FMCMmpGN03d
	 PbJGyVNgFYU6Zqt1639BE9Z+a16ArdfC9PVYXCOyqLhTFd+PktkIddpSnfrEmKe1TX
	 mt+v7vipJG4CmO5sIMLeORCV9ct/j05p3530ysESokMszbSkoGhMhwZdtpypYTosFe
	 2MDCDBgiZjZgvP451ti1sUByj5dyI9Sa9sTrsnIkK42l7KdQqhFy1SReWH24j2Q5VC
	 seu00V7n9PtTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68F4C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 10:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167438412578.24926.13217002321448422970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26c86ac2759efbafa79aa0ee80de98a44d699f649a2a19d25036be8d91f4fb3
Date: Sun, 22 Jan 2023 10:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674384125
