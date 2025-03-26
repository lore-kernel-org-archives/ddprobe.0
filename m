Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0C75383
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742970594; cv=none; b=nJyGdL2fqDYIEQSxaPfN1rrvMc6ANSEnybZhY46ulH46rJnZaRaU+YWncMJH+639++otipmrORxlGKpRQVL8tLQ+ykYUdTYRz8//Lw0bKkc0kZY0a8g+9J6mVQ1ZZp6kJC/QSvSF1Mzez2KB5XPi/aN66dPA6w8qQKgrHjPXTs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742970594; c=relaxed/simple;
	bh=6THsgPh4um4WmXO+eOydDuelFnKu4P1b95vvYKnUBNc=;
	h=To:Subject:From:Message-Id:Date; b=Wq4WUsE4fPlXvzhQOubH0XiR7x0EObITLaVQT9af7zbVecFIYZ8MXNyRqwh4N9lWLABdflwQIE7TBa2RC4gnUqtMfOsRkjIEJplBNexFALHVKzCFB4gwcucOhlOEykbvncszN+geSrpf+TdUQAlV6ss3ktkb5dov6SD+jV8DBm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5/4cZpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5/4cZpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B57D1C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742970593;
	bh=6THsgPh4um4WmXO+eOydDuelFnKu4P1b95vvYKnUBNc=;
	h=To:Subject:From:Date:From;
	b=q5/4cZpzkT7VX2d1Q5CNfJpUwsXdQ1Lgb5ouGT/PCDIauaEAnTRRFi6JE0hB6TYRd
	 lslDF9vKsItttxZAplcIrXwVOrqw7INtLJ8zikLh0ea9WhI3T1prCcW6a7bJhs35ae
	 FMnSiNt5cCE4ETCN/UPW+UEhNApGMQoN4/YSytj0uP3/EI4z5LK7Jq23p6g2SHXtTS
	 lmz3+rVLZiCZiWV2RJdbqD5oZkuysJAhmw3W2ATlk27MRg79vCf7rawCWVvATSMusG
	 Yvnr/jaEY0oUdRUiRMCNq2brhRtFUhKaF/LSv+Zuz52HSx4OOCUE0eS8uZzm3CZ5qG
	 3CAhBTo+2ufxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963F7C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174297059360.10091.7700443693165888085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f65ca48255e5033caa522b7a0db287547189d638ce313511a0ffb2cd409d1d
Date: Wed, 26 Mar 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742970593
