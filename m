Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAFC23200
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D19BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661863853;
	bh=y+FUzLNM0g7INyOtgWyNEP1S+FIDeGI9eYIkkQnSJws=;
	h=To:Subject:From:Date:From;
	b=KW6Ow0A3uaG7SGs2Ax2nZMHKmc8RJWd74AVOgNvbO4m3VH92gNaMKyHb2pJ2zMMbv
	 Zf6YlJ2zB4Kzt3LFD9dbfKKJxGCgFxFeDKzyhe97Zp8GpKVkXl1SWF4UPxA3OGot/I
	 02u3uMDpNzlWPgvWzwIGowLmy6BrLpdGoOHHMvqxJ+P4/OPmgmt0SFfnMh/7fhxSI3
	 7HccgHu+EW+NNdIi5JR5Murixs/irzrn6SQ5X4y8kn+XgihsVI/INw+7j/AT3rqeDc
	 1X9XLig1Ark3JNL4EpBNrgCmmZwm7CT7BF4K1KQ2BPKywIQhwVRyHfp0WNCJtqXpDx
	 jXYxmbeSYf7bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E2DC0502A
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166186385335.6456.1389325017529362178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10e6f6b0ec769439ab956c6ac6cc4f277147c73523a143669d8450ce9bb5991
Date: Tue, 30 Aug 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661863853
