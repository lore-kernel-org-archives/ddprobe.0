Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED8017F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E714C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672694487;
	bh=3zzGJ1HpWtaMYeIKoiuD/JmlStbj0B+AI/7xl+DvQwA=;
	h=To:Subject:From:Date:From;
	b=Na9Wt5By2ScnpYTX8y/Q5L4ND74KHtU7tQRReSKBK0kBG8q/7rkPUJrTsLlFE8dZz
	 fV6LaS3UkMbtygWDnxBnRnJt8OO3d0V+fL062n6QrVZS7ND3upwoK18owTgfFi6c8e
	 uFVWBCKOLGWFHrQrm7FPsQbDFnhW3kh6IBwq0CtNB+wI6CLWWqJHryHtcCldTw0ak+
	 uuWoGLzFbDAWUL7//WbVPQu8iY0cEc9lHBCWPOjVfeaEAAzcDU6t9CJvtNMd5FCQSd
	 XrvOqIrAZs67TfaFd377jTDobw78/TmbjEPrIFALqDEzGyIqKLd9oN++bVEIdMwwAJ
	 MoC0EDK+XC2cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D81C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167269448738.26888.10844762949183235662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfcc5a4dfa87582a27269ad3d307f955ac6897a8b09adf80c804459a3c93eaf5
Date: Mon, 02 Jan 2023 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672694487
