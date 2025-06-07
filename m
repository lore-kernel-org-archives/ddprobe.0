Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A571EB182
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749328794; cv=none; b=JV54+A4+YAn7UGEm7es1hVxRmUL2RB0pYKRHVkTDvGtDGC7mW5N78V0ppHlc+Q6I9qaAG/MKK/gMPRx8nVpM2i6bYmQt7Yeq/03LKiTLmyWGmacDVYut4zxh2yDKAgDliG5W9IskV9c9S8N4D2Io+7gxpNyk+D9zamb0ymiyMAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749328794; c=relaxed/simple;
	bh=BXiEFxmVjIqpcyYXaWfDv8+QEj+0eeh+SYAOgH4w4Hw=;
	h=To:Subject:From:Message-Id:Date; b=OlcHmaAoxRkh/3JRNJNoj0bCFOJ1C0UvcabtdGW3hmCKe0OL61TpU0M7NlylZMsqZjyz7ZC35aBjcZjvLUDXSkP21kfXfSb1tcv8a2jiWzWt8Hyc71PYq163WbGHrv3LpkDm1oyGXviqtpBGlv1BRmTGKhWx+yTnB28Tw4f1qyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ew6qnZVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ew6qnZVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D20C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749328793;
	bh=BXiEFxmVjIqpcyYXaWfDv8+QEj+0eeh+SYAOgH4w4Hw=;
	h=To:Subject:From:Date:From;
	b=ew6qnZVCLhWU/xPpshx7lJpeXorfxOL5goiVdigowNj5Scm8P6pC9YyaTb5+MeaWA
	 NVYu8lu/4X1ZbuyHGDqGXEUfLyS9kmHdZtVA9XXZZNJESPJ69lsxYFwYZ/Pt7WqPF5
	 Fr+x0qY4iTG5sax05I0bRytAZ2qYzPpRivnLfpOc3Rc+L7ASuugZpOFzNdGojK518a
	 f8pgmVWVDscFU97Z2TJyXSdNuLQIYnrMGZyj34d2lvDTMpeSqifsPN/hF/dDg8iSd1
	 JW+P7E3Z2TSiDFgJKnTV2EFLWP0KjzRJwlGBQsHDZMdbCup16jdb9HLs+tlaCjIxJZ
	 WETSA6kKSgPQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB30C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932879358.19498.11365190921113573925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7a17396d855e92dadde92bec6041fbbeb249a2f1151548ac0448cd4d7d2591
Date: Sat, 07 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749328793
