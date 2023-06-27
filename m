Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80CA9749F
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 23:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4B47C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 23:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687908788;
	bh=YS9Z9MGxFIACndjCa6Ql+i2tAi0tzx+NE2lSKMCfy0c=;
	h=To:Subject:From:Date:From;
	b=FOk6Mz+KCJXRE8jNr0M+8S1A1F4NtPWnpk88ZBMVFKq6TDtBqOFczb8mlrTOZmKAa
	 BnVQmNj9ZAV9oi+J/xGvNZbySLay4VhV9a+iRMLMjFdE8OUDiPdAfh1kZETTasXRP+
	 GjxGgQ/GpWMAP+WDOdj9hZ4/exFhl8HMPj1Yh9QiHzFLfXMgl+KSl5ZlzXj6V64WsG
	 S7ZrlKAlIO/ht6rYvfLWD9OITgUm1NizmRVg6B1a/7lMD1boxxII+404HBTQqsem6z
	 0UsIHV1pLYK1EIBqe0vx2NrjJsQBJdwZwhlRuhsjIkKLfAUAblS/EQL74b8ADUKkOa
	 UFzitylDapPcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12BEEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 23:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168790878874.11290.7947697923914802303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c43d615957f128a6ed3028e85dca9816b59429de598c1735c71151972d29a135
Date: Tue, 27 Jun 2023 23:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687908788
