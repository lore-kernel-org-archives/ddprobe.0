Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C373F10EA
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68471C433D7
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666835454;
	bh=adea64tgtRWd4quUVkk503hVKqUAfNSefV8+ZCXGuQQ=;
	h=To:Subject:From:Date:From;
	b=kGlyzkcvw/MrdF324VHKT935N1bnUrecbwZdCwGJM5y44bgW87QseCWpQYcOYs2vj
	 X+D6MWOClBnoT6RrYnbcDe6l4W4AM53RledeB3HkaiWclSIFFv0oW4O7kX8FYGO7Na
	 WB+1lz/lKi/YAsQrNC4M254/gCgvl25yKB7SKgvSu56jpYP0FcDy+M8YtpIezASyBK
	 BP+7DwqdKA4oXQJ9mjnLCQ9CM7R409L0LFbDgfB+pd14MNGkg1ZIgqopLVa0VgXRbj
	 xkDBBTf5A7BgyeXrENZjGbSveIJT3cmuqwHtoqh43BPaj6S8Xnvb4PKkHhjnYAAGkS
	 OMNNT3Al8RAbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5084FC433FE
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166683545432.3789.18134086075414156932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0917802160e2b6f101722cc0cee11fdd353a00d50ad0309aa98e36299925e49
Date: Thu, 27 Oct 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666835454
