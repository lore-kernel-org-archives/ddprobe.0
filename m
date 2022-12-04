Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80107C
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83D55C433D7
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670135454;
	bh=TDEBYuw/tgGbPFW5PY5luj8wL4sd0vW8ApsS4TWuA0U=;
	h=To:Subject:From:Date:From;
	b=K0Ng9hXowPdVsHMxH8IW7/XMQF3fTMFu+jUUcvZjmFLWzw2dV0V3SYuEPlAY5xn2h
	 cSQyT9gRC67m2o9DnWb1U3uXtyZ1ryeWdYtplw8fMo7VcXxDrTKkb5jUTcAev0S1LZ
	 zQbJprueIQn32BoPvsGqKt6akuu8iUxeRci1YE3vIq/8GRGx1VwRJoL956ipmnqxt6
	 7dYERNoQe6mDTx5a9LzfRYNauMl596G+Ut5EqDJZA3YCtnbpCXwMqq0Eb4nogLQ2BB
	 a4MSFYDXGtQ9Q/1GB9T1EY+B7HFnhUIhE7bXkNr9Dy4Fcnq2piN/fxBs2YAIkvBmpV
	 UH9LSTiKEj84A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 616E0C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167013545436.16182.13585684239600693973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34be741d1e7ae3725ad85373de945deeef5f68364ab37c1744568f026341271a
Date: Sun, 04 Dec 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670135454
