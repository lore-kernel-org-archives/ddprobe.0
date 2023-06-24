Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C136E7FC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 06:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A6EC433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 06:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687586588;
	bh=Afnauy4jpGq1mPSFx63V5uo/gZxmwMyywqWa7SvfnW4=;
	h=To:Subject:From:Date:From;
	b=tDrUcF/k5gwB+OZyppCjRcZoHpG+e/f4aEKlXbSMAfbuUURkrocWOp0JpgB+NSn3h
	 aLRP/1JuvZLp3PAyGuDLQaUn/hLCfku/9FUks3dxl3/07i5KnxQDjkV9YNBLZ6fdFq
	 2TvkVZEInaAjXPdCQcqTyvbSMg+kPvce9D1XtNJrTMMCfTSjsbqo167Xy+WP8COkVj
	 zfQNChq6KTAJShCQvOgfr5FRXgdWMWYqh22ny0sNjl2Ybbua06Au8jUZnasgcQu9iB
	 EclhugqJT0umIBgM+h59oWXohAsGomLvekPa6vSu1aUbPgd2tNoZYtbzCt6BXAR9Xj
	 ZFMtxTSC1fmfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE7AEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 06:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168758658868.24348.10886684080721952468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3f50bf36f8ba095af27b8a7487c2eaaac02aa00674cc8a6619826f756f7048
Date: Sat, 24 Jun 2023 06:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687586588
