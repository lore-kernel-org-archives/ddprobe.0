Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535E7EACE
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748732394; cv=none; b=l6nWBfl0t+gdF2Ukm0yETQaCcREpyy2jVe5YbsQbmiK/SS6jeP5MjXN7t8QJvuM6zBSdlB20+/tPT2ZmP8Z5Vv1gdE9bo4js0/AdaerzYOso5FpCKQ9b+R+1Gu8K+MOtUYqFlAdDvfJLhpDLDX60sQla3cyPrI7lLrg5tjsYAR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748732394; c=relaxed/simple;
	bh=C6O2iTR8N+yQKSMg3NjGtcCprqjN04Jz6+ov1sYTxHk=;
	h=To:Subject:From:Message-Id:Date; b=c3avMkA6n1orDD7W446Aj4DRZeowtK40VefdNjlo9ucwJuici1BF+D9AM1h2ZRtw/5c5uJNo+EYuBxLhRLzSKqnvhtP1V9ukf3G72VAsBUedEgfrqMYKyNff8z7rWZdyETtRIGeHLPkCl7Qo6ugvGj2SoKd83H8yRn6LAokLtwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tn8xU3yC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tn8xU3yC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD165C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748732393;
	bh=C6O2iTR8N+yQKSMg3NjGtcCprqjN04Jz6+ov1sYTxHk=;
	h=To:Subject:From:Date:From;
	b=Tn8xU3yCPR8kzVE4585uHZRq2s+QNIDI++u4tGqoJKR3ZFP5q5ZbHzHpqVSwKh3Cj
	 4VId8RtbWn5DJC3kxhPT4ZZJdcZlptpvNd1lw+zc+JULkUe1Bf/CJ8AflqlzraVuuv
	 WjtgsTm/0WFxija+SukADz2tbT+Wr0zH55J5UMSNnRR9r7een3JDa8/UicqW36y8vJ
	 cw1QofZjqf5XvoozWJT0+Wr987aeUAR0pWbUI886pQnXMPMzKCh7pPJQc8fRSQ5geX
	 Vo9og84sCnvIK2wSyGbGebUZOJEqn///ou5ka/IdD2t+k0lB8N8YcQxMvsk3hjleOb
	 UYZx8IebkYZwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6B4C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174873239357.23109.2244547222414246208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3152308de927052afd1fbef34bab6ae97e61bd697d42768737c382cd6cc92477
Date: Sat, 31 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748732393
