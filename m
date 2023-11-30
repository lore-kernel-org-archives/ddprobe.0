Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1C661698
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpI5jfNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E8CC433C8
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701386296;
	bh=IVzhjxKc4YkUP/UwAYrVlEOUKrZ3j+JBo6I3hU+kL6g=;
	h=To:Subject:From:Date:From;
	b=RpI5jfNt6UyTbBIgko7F1HkHDQq1/zfZUNqMjtG15T7sS8vsFxZkqzfmpV3Y6Oycb
	 o7d7PMox/hyC5JUiQEiROUGYINEvZCIWD/a+Rie4RqYgelx4djDCgM1Dbrdle/qD4R
	 NtcLIW1VJk7Js4F5zpFoS8e6ZBwKVaGEKZ6M99UwbwXGCabQgdwz3U8n+9IdCBIuUP
	 iXrkGla+WwfXk+lyBogb+v4h4a1OGanPtUbipyTLn9UzAgL0xHHGze2Fx5LgR0Lfbl
	 FIdaHWZwmaAxsFYflePQtZ6pG4xOomdJyOkiA48Ed/ZbGjw0XumEDFb/7C1rcHbWfp
	 kPxT/9qvfRX3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DAC1C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170138629637.2584.11179266856155448594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de85964dc8d2eadbc1748eb676d41f5a8d40349af8adcb504f702a7549d239a0
Date: Thu, 30 Nov 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701386296
