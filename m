Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB1C7F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 16:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73D1C433C7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 16:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690044728;
	bh=yPaGBaan38Sv/jQc/7LqHuto4Z+b1Ts7epbEbeSrQlM=;
	h=To:Subject:From:Date:From;
	b=ajQoCZe6wMwixO56a238vX2Nddo7F/ukW/apnlQKd/V3yraMZUiioZZB0rPsdioE6
	 L0JMgNmi2Ozkh4FbmhS4HkHhU+bupMzh6GituDJo+PSJo3a0xEHofrOQt5ZKe/fqZU
	 rZGZ45sLGdF4XEojGhoRk4A9WtGCs4TP+J308hNRqIUhEF6OfW3IuI1SekVl3mCD9X
	 OvC/5WK89P5N85a3l9HFPSJkrmAV5hnxGyFw+qpRuqtGHIbR0+BfUn2JjW9TMCzF58
	 A2dFbxK7oh8JNT/mUADpWzU65yPIdAWr/LOI5pLuaZnHtDj2hO+WWnXtfhFvZe74Gu
	 ihn2MjAM9h3GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94C2EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 16:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169004472868.1162.7443760542941125092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87326a6d88af00c2bc2e686cf35e941d9a5a5e97cef8a0a23f03b02d7b12c748
Date: Sat, 22 Jul 2023 16:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690044728
