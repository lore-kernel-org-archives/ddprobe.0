Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4250E23C4
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 15:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F11C433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 15:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681658825;
	bh=tkftc4g4y/uXs5FplauT7Q/ljnRQGyM1X5SVCtpxdmM=;
	h=To:Subject:From:Date:From;
	b=nUQzLGC+T0A4WxPVodInbmQMvtWPHB3+RtARhtSrAh07vQxyXCZ9XOmkWzVPu3M2i
	 YQxtfs6NR0stt5WHifzrvLeuSGKxK6/Zs4hJVFjAzUrB/cFZaqeV5JzUXFnqbeVhPL
	 eRAzl+wKXSt9KK/A4tmoU1isrR630FYYUNNr8yGqHjXPlKhW4tolMfuW6sNV5tZwdk
	 DDEyw14sJSdrORJ7nq/DNhHTVPsk4zBOtaQqA2Tc67aQ5jasNiE91eOarQ68JbMJAl
	 6GPxTsT1cxRDNdZxbth+byZSKIqAuxLCMCEizKVslVcvra3SVDlCDUHQdGiESvZA5Q
	 3rJJghmKpli4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5617C77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 15:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168165882579.21350.300965380623693625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1000606edde48438a1e15a1f0dc5e37c30cdf90c4c3dd0ff1e85b9db570948
Date: Sun, 16 Apr 2023 15:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681658825
