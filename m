Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C5DBA4E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 13:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2E7ADC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 13:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686402006;
	bh=YNwdSbJkB33Ntbebzkxp1C8jj5vQfAw4WD82l9Q9fCs=;
	h=To:Subject:From:Date:From;
	b=MyFS/QJHxQVnglYis5hRRwcHuBkRyDVxyfeuFbFJEbF+4MlYw7o90CkGz83FjUWoD
	 GPSSvevwS55P/kn5C8h/FmoV+riU2/JT0Sq/zQiMnpaHxktnrO1DT4jXnt92FaVUUV
	 C8OaKbcrr7arhB58OfBvbo+lCi8p9DCgW8hcJ1eT/y2uTNkiL3IzOkIhwJGTcPqOcl
	 b/YGnXIaewmni7G8Y8GY7WSulACNvQl8DqHF8TACX3iPcucxbQl7nkjTOgja8EOc3i
	 qx7ZDcox67+HVAWT4Iq+NIPi7VmnXYVP4/J5ppfg3eT99Q2cIZAL7y5o75QV0p+dDl
	 budqFdhfxRO8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5299C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 13:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168640200585.32228.15372286360548659919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e194aa6e49c53cefed15852f2746f356bedf2813696aa14bdb178a8982b2f1
Date: Sat, 10 Jun 2023 13:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686402005
