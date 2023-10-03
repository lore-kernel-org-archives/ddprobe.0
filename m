Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF4FF4EE
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 10:16:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32CEC433C7
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 10:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696328168;
	bh=WzOuFy1tdixt31OohaMAIlUjaPhBTGCHnunCLLtji8U=;
	h=To:Subject:From:Date:From;
	b=Zwm2FIwyXynA0R9e+NJDt10hGtdU2KrDuPUivjFGCR6x6LZbLnq6yGIF8hzLGfK2N
	 NfBobBen4HD2PC+/y7JgMynzOdGQM0OiVjtyShFG+TZQuneNlxxtCvG2XJHmeLACc0
	 D0J4wabUY+zJT8ETFsvp+/4A2ydGC1zEUmHuZYZIDbpZw/RZtcU8tRL1WsxA7cia00
	 2WArW98o5yjbiSG3avAp3BWY7UUGTBniJn7WYhvfYdiYCqN/+t48LBTsg6/HrqCLa5
	 1I6bKqpTRUlhtnq44rslkqp9DVuanK9ErZhgFmqMDT3E0IwjvNB2/OcZ3iPrdpDSr+
	 yTrrKZg66Ef+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A73F3E75440
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 10:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169632816867.13755.10213967844606740445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eea44f45ece36c0c6772421dca62feed0e42e7f9d29f4573a5d8796d059fef1
Date: Tue, 03 Oct 2023 10:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696328168
