Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC3D3BE172
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784922034; cv=none; b=eahhrFg82zr1s8Yvc8EEwgzZ2cYWuiV73o9mJOMjgoy9s57HlnSaYfzyA7XkgQiuh3tlBNcb19bz1ZiuEHvoFG0Wkpq21W3Qz/v9Ry/oY+f3VdMHSQEtAWlnHy4QQDncYwtCb81ExsFi/qyOkhPSKvnebQh7A1yqo2hZ6x/YlKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784922034; c=relaxed/simple;
	bh=4IJwOMjh6FPDuGDFRmr6RXTh40oJpT4vNO0OzJlktII=;
	h=To:Subject:From:Message-Id:Date; b=qTJbinZLffp2lCFBmp7L+1bLkRuRYdUi+TiJN0eyFjxS7947215dwatALDxClODcpBRpbC3D2MMv0D/Xu8JnJzlFyYPbqY8jNEZ3VKZ6mp1OK9w/U+g8zZW4UmPah+XkgFJzHrOzGlMTXaJyf+7OwDrdTgkd2CYYAy386ueL2YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2HFpJ+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2HFpJ+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C7DC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784922033;
	bh=4IJwOMjh6FPDuGDFRmr6RXTh40oJpT4vNO0OzJlktII=;
	h=To:Subject:From:Date:From;
	b=k2HFpJ+uTQJeT4FKTqIEvd/2UzSRTufmj9dA9XVUZ8BldEyoWP54nTdfVQE7cXMeC
	 pw0JrwiYNn3hUdIcmiNM8fZlpbxKBKYMhAkUg2RMFBPxWpJk/eq1AIcptAs762doj1
	 Xb4W/ziODSwkyZZPT6UOL07nru5hVRG08RP33k/WF/DTUjU8vRXIzaMwETQPhJ4xwN
	 VfmpRH+cvlHPrAeZhCIyle8AogDkDk77jGK6szp8k+y21TDuFBiJkpxUU+kvcXc28F
	 IAxq2oChqdgLPzG1XDwIWKLgCX+CMPf6EGVcKhXLo/Gu1hRECxx0rbe6JAD7RB6c8K
	 6YXWjaifUaMAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4E2C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492203368.25814.16488777247958260949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c85001fd3922a7b115343f55e9cb02018f3b6fbe01627823b9ae1c3907176451
Date: Fri, 24 Jul 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784922033
