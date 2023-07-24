Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DCDCDF42
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 14:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1186C433C8
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 14:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690209128;
	bh=BNYeg+FH6pJka0NkCeHiUhMTZ6IcopYRdMnM5iSqxnM=;
	h=To:Subject:From:Date:From;
	b=aLxLtDX5JSqCbHwcSnMyK+ESY4tao4u+q6D8rpRtbsYtf/g+f7PuIdoqgxFU0mRhR
	 +4pxfVf5nZkTBVL4Her2npaQm3uGv5QZDzUsnMT0hN6p21OFd+AlXd1iSFri/1Ys4a
	 0E4OSTBumq0eeeuxg1sZQfm3sONSH6SDwQ53iiLUEI07nfccKj8cGanol6UFFrKCKI
	 XOWW5vjzpcSKm+PPytvq6OqGgptqrPQkbTnm84V1fNQAqD4beyj9bP7qNYxndKPa2I
	 JqdrTbBvI8htQCe3Ky4XSipsfCRLfZlcWXLBlteQhZy+DtKiqpP+9V9IBt2pX15aYW
	 oJEVJ4X3tBsJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6ECC0015E
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 14:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169020912875.23040.8655894497112981255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ef9d5603ae96a21806ee6ea5d59909ac2a2a232a85cdf457bdf066bfff8adc
Date: Mon, 24 Jul 2023 14:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690209128
