Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C8B7F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77413C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667607654;
	bh=QxjkyJddPazMDXGiCXb2KlZbFxuco28Rm+cYxRNHYI4=;
	h=To:Subject:From:Date:From;
	b=np9qKIWAan7Bmae3DoKn8WgUcBhgINGcFxfXToLCt0N/qcgFs1Y1J3PoxVEkc/a5a
	 CXrJH95Jo/m7z1bsM02Nu78ekBQhtMN5GuQwvfsyfwiXKKpWn0U0hq9qpazxfms+GQ
	 cvglOLxJesKNUr8HrgdQFjzZBj3LTeYhy2ZG0VCtpUE2Dn3TZKmmIyIuvRCUyATZn0
	 TuRQh8M7t0zHnRkFQwuaZev6tUlttTJThLIAPeTUc2ACC+rZMC5wiHkjB/jkBUKfLr
	 aUuPK+QOsm4SD191ZC7Y65oLg0Go8Y9HU9JUL49cSsskzBjXv4x0lJcum39bjqRkKW
	 9VKAjkAY4g8tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 581E7C4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166760765435.28559.10732398703191164384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437a2ceeae3a965089877f6884a71a3aa043db490d9fa384782499cbdd43db61
Date: Sat, 05 Nov 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667607654
