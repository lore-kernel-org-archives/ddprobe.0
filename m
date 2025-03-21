Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75764282F1
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 05:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742533794; cv=none; b=Bb7YWKsKUZwcp1+SqsFbWDSCpcEJ6Sxtgh5+SXfIDP2yt35Vdo+EIB91ciEh8zcRT2t1f0xWI77K4DXmD2jvXmqpm90INWGQgZB612gSGnXwzA9KJ3fuA9jZTXWxmNKyICIXqgahT9wJoV7bNu4M2ex8T+Z7Zqud7ijqfh+h1G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742533794; c=relaxed/simple;
	bh=c0G4pMjYOiOBHXw65iTll+ZZwSKUIBlVtJMnyT1/6ek=;
	h=To:Subject:From:Message-Id:Date; b=fAb779jIx9m4BeHb0f864QL8+n59hGxoWoGDnK1D1lta0aTu3sdA46L2aKm0dj3jqhAJk2QpWPvwTGygKqTzO+rha1e73kl2b4jHske22QBGjK+G/iwwzsrDYJFEFzvRH1XX8oKjQAAwbR/dtUhLsj1zYA5ThQjlV2n8sClkMwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFf7q5Wt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFf7q5Wt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF0CC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742533793;
	bh=c0G4pMjYOiOBHXw65iTll+ZZwSKUIBlVtJMnyT1/6ek=;
	h=To:Subject:From:Date:From;
	b=JFf7q5WtMffGWINCaA9T9Y5CQRCd2JJ198WuVU8XpIlEIZt9AZXpBtad0aC5xzni4
	 DG0WZjDySrj1AbfYUasjT9zdTTb317ZOQvfUqk8pcOEcxV/My0Pm6Zqv+gaJEDuon2
	 TAwT2C5CSSPnfT7Efw3rnzoreOaHz8R259noDU338CM2Vuz2jJme15oOtUnrHT+N1E
	 /VzfE5QLeWJ6JZz+pshwCeQQg9LpquXrikaGeJil3B4D+L9bPSipTsVCBWqM2B/yzE
	 2f9FV2ZOmOJM1OEjhwN71AVDTg+a4xILBGHN9MmI5ZJ3wbJW0dyD4jZhZkVJ9Sy48v
	 4UMSN5PNQlThQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21CCC35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174253379364.3417.3538445751088303008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ffbd97f0d9c1f8fa49b24b96dc8f39179fade4b583f01f3d7ba29723eec39a
Date: Fri, 21 Mar 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742533793
