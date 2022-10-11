Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C314A3C14
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CF1C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665504053;
	bh=rOkHXli57Y1keI+YFH+OPugNZ/yU96RrJ6DmSn2kGw4=;
	h=To:Subject:From:Date:From;
	b=tCbSy52BYzlgc6du2p22jiKsrbWKm6lXZL3t7qEX1UjkK+d9kkPNCQVuQTTDXC7fr
	 2BSUwKbrTXuFOosFlKdauPXhufUZ2BMZSZ0iYRAAKvfhfK1K8WEusf89mEwO15FcK1
	 XywP71duu66HWYnMemkTFrojTlXuUUdx4rEY1ZXFXsL+sPfXu10P9Ybry/iBiOtk+w
	 JHT52MA/esTbfz3v86X19VAXEnATbShxW2B3gRpSxJYRa/JeNt9h7Fobt4rM+7GZWV
	 fRD7RZpG8ysa6IyTlcec7G5DROCW8b0l34mXE+fAtBC6DKO3hyEBX8/tlCB09O4MqV
	 ++I5w8nMv8OsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B55DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166550405335.7468.13695168212203901674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018dd9dfdacf111b5143fe77da0823fa57da30c01bea9ab65ec74bb024327630
Date: Tue, 11 Oct 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665504053
