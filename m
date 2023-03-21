Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48152D505
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 18:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4E6C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 18:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679424485;
	bh=LcvoYjKEFH/qhmiX/Ur3pqUvy+kRTEHjwcwM5bLOUOM=;
	h=To:Subject:From:Date:From;
	b=B3rrX5SeYEr+XWWFVZZ4pK0oUyDx0rQ73h+uXbbXkeN2u6Fs9XnEmWM2YuS7/Sr70
	 a1pn+NJeJsyE3FdeRiiEL0tyUQMzDmUa7IESiVDRkhI9tPVUViWyxwxhqGIaTwBpV4
	 DJh2D3BFglTbBh8eBCZjY1SPb1zWdwMeLLhwldrEbVboSA5ERCH7hD/dylNp9DNcFo
	 QMCpUL3609uOL18OOzIOMoOr0u+M/ITo8TmyZq5ueE91wA7o35bYbpDMunezs5Mv0z
	 ZTMTmljhBWhRRU9h2mmYfeSKi667YtcEFbzYfoDnZTiC8LCxW43TsvmO+93FNdQAyj
	 WgroouuJz4HPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD600C6FD20
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 18:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167942448576.1031.8626024855448734076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a75f43924deaf3f17d14821d448b863ed7f335a1680ed7c66326a0e10e3c3c6a
Date: Tue, 21 Mar 2023 18:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679424485
