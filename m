Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9AE20F9
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 17:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1B5CC433EF
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 17:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683566946;
	bh=loXRxuiCB3PGdRHiCtWEahml4UDRjxR2VN5MHbXm/OA=;
	h=To:Subject:From:Date:From;
	b=XzsFrqkXUgWT9VH+9cEFTv4Qbi8OpaF2fpgvWdQL1BFYd7hLuMIbLHq0MpCoJWtzc
	 KqrLmXevXz/iH5MmN6JPmZbMS96KBWNHmrG9hjinIYuhSKLq+MMZpplfMfWXwkYAGb
	 ZfWDc5+AaVyDA7lxjqbzWWG85+9StGA5s22REu0m1kOcyullseM/bDvsiDJoG3pR2e
	 cBzXXt7Hwwrtmgvr4ySXSNSJCIvIGF3NvWNyJEwvSwUj6FXFyZdPwycjxfYztmU+S/
	 GpyQ7EaWVaHqVFU5SeOFJad4rvxqumboe6nifH7r7dkQV7/cLwL5iMoIY6z+7umeLp
	 yS1HeI7GINYAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A76C7EE22
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 17:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168356694577.28513.14236846450156337545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8052cb5fb7973f1f386d32a2d915133f7089b8cd781b23ed59de0dc0a17283cb
Date: Mon, 08 May 2023 17:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683566945
