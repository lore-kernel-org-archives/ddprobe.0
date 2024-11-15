Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CBE1684AC
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731696354; cv=none; b=upStvkLNxGh2qvWX3ZitIjTCcZ3S0OFE3NpJOHF7VZ5KOWAq1OkZxLheVvKTkhEm+Q4moPyjF4fYSxSuNjkktZcnZjRE/MY1ItCPBbZnjDo3plqbplwXY2d2hLJwMR1MJ2CkGQd/P4UjeBymkRQCwhoyQ2+s/2hYtJYuk4LzG88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731696354; c=relaxed/simple;
	bh=OmC1Duun3vFcuIUGgn+xaMPmhqASEK86WDLNaPuGdG4=;
	h=To:Subject:From:Message-Id:Date; b=H5Zpd5kkCzDkpV41LQAXA4si4N99DLw8OtgkzWEYjUv0SBZMi4CKCyek1GKsFkIS5lBJ6flZ+n00eovLDsKY/Q/Eq8qdTu+8M+HOni4L8vAQRZ8P8IhOySl0IYHe5ALEEQEBMJ21sENn9LcsnJ7xAjE84c919wFKLMrSs9E5fwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkB4MoIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkB4MoIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06A6C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731696353;
	bh=OmC1Duun3vFcuIUGgn+xaMPmhqASEK86WDLNaPuGdG4=;
	h=To:Subject:From:Date:From;
	b=mkB4MoIwtpWnvZMInWKeh8JXVauh1w8WYc/hGSgO2oC+FbjgWJ1GfvgdQnohPjbMj
	 +ulG4z2Qd2JJM7ZwStU22MC5W78LLXzZvhr1JSUc1iGUL5Cl0EnmzVBpDzkPekc0ed
	 4adGhexMKVuFSdIWvmkYNXWl6GFkS9BgyP3GayR/UP9KZ9BNRksadqk4Yn2xWZiLDY
	 qr7/nif71uSe61ZbZbjZKzj+h9j90mIQnZNYXsAsv2VGmLSTjSHNgM1eLPZ8okt+Ss
	 ZCmyLZb6xtkYsbB3S+AJdF3JUypLs5rycaJFUu4GlRx1m1j85KPGeZz/U3ry9/a51t
	 WqVJ25Pgmb+PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C07D68BCF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173169635360.4646.17213959297417420672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93d415de35cb0066739644fca278e91fa880770d44abecd20ed41bcf3f368bf
Date: Fri, 15 Nov 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731696353
