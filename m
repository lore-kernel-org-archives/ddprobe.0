Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE2E7B
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 756F0C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664054453;
	bh=RNPenAJLkucnlV7O/4CibIt9ogQJHPrccDiSqLGrouA=;
	h=To:Subject:From:Date:From;
	b=Va0+YURujcffFvDIXJ5koOQ35tEhtVs6JmH1YOWG4CYHqXVz9y3uBRIGPU5QjIYP4
	 GDHcKTGoTDK9gIFQ9s+CI6cMyYQbHqUWTlXPeDrpKr9P90AuW4Xn8CQ+HUAQfFfhl7
	 f2fGCxq1IaOVZQD1E7MtugfJCpOaB/oYCcr8wAJTMbQTzCohVECWafCaIgQVUqn+PY
	 ZFCL9nhoeWuQbL/tJZeTWzSZTdkLcNA/gZbX5p0AZ7rEaFCeThhNEY4KXoce+JDChG
	 HEle90KSVv4EghzVrYS9Tuqb1P15sjr2LFGvUd+ofzRbPvW9Qi4qfl44yP+2NEzOr4
	 +ISOaNqyJuWDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 573E9C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166405445333.10391.6381406817260529981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc3977c0ac2e4dcb2d9deef073ffb076dfdbe5efe3bc6634a76d58a4e412c48
Date: Sat, 24 Sep 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664054453
