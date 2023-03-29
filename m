Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F66882B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 22:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E711AC433EF
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 22:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680127745;
	bh=qupUtxpAJ3sgFQwhMN0MHy6dRdf9Oeba5GHIKpHa+QM=;
	h=To:Subject:From:Date:From;
	b=sjEykMLVcqgnUZz9zIwCRBGdhMsuUPLurmFQo0O/UZyOzz8K9UkZIcC0rMHnuWUoO
	 0p58AUIBKoggd8T/OTydFPDvDVFd0IoWb5ZjKbSWdxgmePhBvQhq3GD/bsZizFL7sW
	 l3tR32AXpreZ9z1MyYQntSGpm0lOIP8CxRwdcoSeOJpSuk+MLzWwokbNFyxJDFP8Lb
	 rYg72F1XRKTaz9aoaAQovTAaJrrnzPl+k7LKrjfmTvVjKmq8g5DL1uvvP5UsA9jIfs
	 3GhcerUrumd9T60SYcC4zBeaA0ZmM0P4CwwsSEVBT2EwgzgrnK+T6mUULKWY0IZ01X
	 B/25GXctToWPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C989AC6FD18
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 22:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168012774581.25569.522108629493050292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae4410f8f8c94c1f614009ac9bf6c4511fa06d0983e13ffb4fb7f95d934abe0
Date: Wed, 29 Mar 2023 22:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680127745
