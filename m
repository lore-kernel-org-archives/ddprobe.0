Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663F9EA0
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 01:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13A39C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 01:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676166246;
	bh=iWVTMxj3hNSmVWKW3y5GTu7Tw9SYTSSkZ+GXmHVyb5I=;
	h=To:Subject:From:Date:From;
	b=LdkvVlqN+8Z2Y0ljrhoBWCx90yO47xklN9aR6h8aPQbb6jjRWT5uAECOeJw5QiDZw
	 NPmtp9yQhl8YKQEcMKvwHubxYHlHb1OUMdKsvlKAdvIYUUUVtpBKFKjnHuQ6TZp+ea
	 5x74MhEPS+rCVKe1cm+tGs8ly1aqa92cbS4wEvk9OQh0JjA/1Ma8dPWz88YRrsYLec
	 /r8h5GOsJtWqKn9iYGmcOf02oHFjjd+3AmseyMp7QJGMRxbtR+qjOrCf1iD3l4RDFJ
	 Oob+ydblRejMBh1HEJtA6aix5rvfrU1Twn4KMELUqj6Dn1LdWVY+OfwEHyOxMYoZha
	 M2XCdPUWs9SrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E20AAC61DA4
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 01:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167616624591.27616.13162790098225505395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5968b33606dd0eb5a28137bbac4593593cc3984743e85a482899e0b31653a71
Date: Sun, 12 Feb 2023 01:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676166245
