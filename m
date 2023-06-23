Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B0414AA5
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 21:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50CEC433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 21:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687555388;
	bh=W0N5X7phgFShdZlC1WGZy/j4jgRjjiM+IsFOkXWkNGA=;
	h=To:Subject:From:Date:From;
	b=NRF6eyCqoXtsHDooPT+tY1YWHP5p4/UpLVXwrRe5BZ3TbbGUNfXJgTf2tyyxN3M0J
	 j2uhMQYuikW26G66JRM7nF6PnIguc6PVDSnhBKyRacHmKTKdjBA5LNgkz+os7AW6yj
	 wHXInakbdeGrlHYF59mG8O08805oSjeRDA/M0tyEqm0+fWKt8E0jY9j8jVJaIDt/t1
	 9S6wpfSZdDq32Yl/B9e1W8fHRd0LIT+SRvetuuvgCsX4rWEfT7vV0Gpz3OGftqtk1V
	 el2+Fs3ckRs9gjg8R0BH6eAI5wKqFWASmWLfbQVAF3ohTfJP6HVcCjZUTluJG6g0Bf
	 W1KXFK2L8ps5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7168EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 21:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168755538867.17916.15936754468004283296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead69356339d5d3cf2bbe6aa9adf48e30aadcd22fe4671ad9cc1d3ef0e7c4612
Date: Fri, 23 Jun 2023 21:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687555388
