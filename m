Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C222C9E
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7418FC433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668010854;
	bh=ssl+8xif1k+Bl2FdLO5snzMsua1zYm1M5Cdr40yc59g=;
	h=To:Subject:From:Date:From;
	b=UE6xsyCNjwQmoKZdBQ05n0BTjzjQ4eX5d5fqzntYWvrf3g1Gn6Kqb5wKFM2v0ZxBO
	 fHV7H4W+5nLNgMesykYG8ycLGDZlUcONHPl43HvdD7f2YZrQOpCCfCbWMA8YcU6fbU
	 fA1tGxedje7p8Qfc8UthR2NIqT+JBN+cx88W1ZOjA+gYhVZ5iQ3kypwbba5nhyW585
	 hFi9PeezUQ3QFojk8wJIMTK0ryCrkS3ZqNQMpTt1XSyE2uU4Sg+DMt76eUyqM58AdT
	 xvPfP141A55+9zLIWRsNMJ8smRqcG7G8XgeFt4YlmObV+BR8F2As6Emnmw3My/iuiI
	 1K5nEkTHTZLDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51AFAC433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166801085432.17694.6482067025945263777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b7632645a79ad5435280cf9c5e95aa65bf1dd8d48840ae73f515a2f3ec74bb
Date: Wed, 09 Nov 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668010854
