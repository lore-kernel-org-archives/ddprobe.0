Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370E717E6
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 09:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E379BC433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 09:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674208325;
	bh=B90QGS9InzatLUsaLgFaRrgEBKrBlS64txnWkWuvxc8=;
	h=To:Subject:From:Date:From;
	b=L0ZA3IKsLs3HPw7RHyjSDd7vjGycb1GDb79P00FWg1hw5cCX09qC1RCyL+Q3kJk6c
	 ujQFa6m+v9eTFMvGy3g55qge6L0t13k/aBlvuX2F21taJdpq+0cb/ER3ovboxaftpB
	 JrqlbHIs9YB6S+Jpg2b4Z+RvKhJaRG7ZiSBal0DPM0XwCmsAjFlwb9UT/x8q1HuhV3
	 lGN0Nus1s+cRMdbnWGBRULdhAizmnh11yR9oYlET56NtfjdVU9l3w9jyZhEaQh1Ill
	 4jvjP5FjCQfCVx503FLo3Ws4qXjXF0Tf1HpFaMYDLMh6HFQxwpJGuAYquBBkFCGkBi
	 FOnbaMONkqWEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9395C25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 09:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167420832581.14919.362648179285305265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c1eebccc8b2a1e3489d9013bb0073c556a739980c95c47564f13af3885c88a
Date: Fri, 20 Jan 2023 09:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674208325
