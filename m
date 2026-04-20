Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8653A16A7
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776690454; cv=none; b=Beg3Q04WQE798zMyv4IZDCg4NUu/c0fcnmvQqZF0JL9qzywawC9GOUpCBKHgmCDbYD1RG1sOXHxcgyURbhRNtUwzFsFVhuxQ0pPk3RM57Dz7KEYtkA70v2dKLI83A3FBf3q9SnpMC/L6LTtjmTBrlPHE9iXEyh+9kGzzRC9xGdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776690454; c=relaxed/simple;
	bh=Jr0tfE66Y/W8mMu5bYmVdEbq2FPIUQYEKF/9EtIF4gk=;
	h=To:Subject:From:Message-Id:Date; b=GB4E6A/dBNGTdU0nADyvBbB7C/wNLrKqsBNBqGncS64zqh2FNND5YR8dEzpdAQJuduxOH/4vFyLFUGu3bckxLhvLOEzaI1DKNSZC/42wwWN1hJPBrxD3/09cOxoe5+9vT0Ucz/663NkyfoMY8/sGhB9t+vYuc9GIwhtH/WdRTgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2ivg7op; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2ivg7op"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6583C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776690453;
	bh=Jr0tfE66Y/W8mMu5bYmVdEbq2FPIUQYEKF/9EtIF4gk=;
	h=To:Subject:From:Date:From;
	b=h2ivg7opXsvE4vDsZEk2YPAavGKgtsw3FK4vt6zHIwM0O4m2Sp+VWoebBV9ucaYKF
	 6c/RlHzGp2vNmWmh52JHgbTZJvXiYoVhyEWPRhuBcbkggHqpyY3TK6xRp+JZA0jNoe
	 z5SsRwGFooEE7FniVI+JSBR5BLcD3nyL7SwpIrzTlwFGgS7rRTLoJssuy7YUAC9j6D
	 B/hnvKKuS+HV8tWaI931JyyAJSeAWHBMTYL3MWPOF1X5oI6AmhCxMxUrsekBbOLYRc
	 tvfBIWlcQyJDaRLkGB2u1DcAqUa3xeXouuZ0/kQ2Crii7CUQ/AYZyt/GHauDrkXvOB
	 bpnOMN2ebdFag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A971BF588C3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177669045368.19463.2063214164277998849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94f39544ad34faa0fc54b7453b26988692568b43786aa2e34ae8d1f7d1c54422
Date: Mon, 20 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776690453
