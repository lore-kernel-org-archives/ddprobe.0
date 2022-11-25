Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FCA7E
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71BD0C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669344054;
	bh=MKoaryTKWSEuE7QSm71ddO8v0G+jl6luKDUS5NAZS3s=;
	h=To:Subject:From:Date:From;
	b=WmkN4l5R7O7mkPXq0FA8EEdRxjTZjr2sB/2VSMMefSDy3rC278Ljh1Gpn12qHEoue
	 sZbXWxYV23rOSkmKnS3MKQS7f1cbk3PbxmZCtL8caxYnE2C7iVatJlmdLcIanpiK0L
	 cVoPWW5CO88sm+Ys2TUuueO4AEqucsn1ANQ0fTfmAVCAms9qypfi76DkpTNt0EFzHb
	 m4x6VS/hxznfxZvC2v2QLqA89FeMQ2Q8pDK7mtCfFZ21tvTPuYPaO/3fvftvI7emaG
	 cfLqIFbQwzvVsIidlkmmLIpK6A11u9qkQgDlE7g9O8z6ZUFKqevzfdYOA+9KVRbdNi
	 1eAKEAZLFoqLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557CEC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166934405434.11274.6190694290361457282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26c8bed0411fcc9134e2b820e9d2f0644ed604f1c8afe99bef7ecf95648ecd2
Date: Fri, 25 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669344054
