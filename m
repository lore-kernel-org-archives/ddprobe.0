Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D202F3A
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 20:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A78C433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 20:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693169048;
	bh=bQKWAPbRuWzJeEyQw4Ji1hi0d7TMxBOkj+GFcNTFJiY=;
	h=To:Subject:From:Date:From;
	b=BjJXpEFj5tsdzJxrrHN15AHzaXy86G87QgMvtDqouBHRm0n4Ubu7Tz3ooHVeY0LzW
	 YsGIjgYYZr1zTehIZiq3Zf2KzwCfLu2WHb6nC/0OVOoj0bZ3yRlnZcwKKKSKWxkAsO
	 zLlNVGUVQoNjraX7I3pma5m9LlZjeoh0AZTWUj+VsFHOtSAlGJz/c9q7hdGJHuiCsM
	 aWaUDt+KCNoDC6g6Izw0SLuB9KYIqACgbQsqagTaCm5hTpyAADg+MS4YAUtfRP2TeS
	 Jp2v2MyKrCk32Ew3sKAiRQBBtOt077MuWHSYPMjvekKrOKYrzvVn6KbIjkNJfJMrHM
	 5KvEnvTj2M2Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6B4C83F11
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 20:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169316904866.23601.7642044988256842541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c24a757b7fa134bfc4dfd9a0177174cbd27090ec0d9a169073b5c6cbdf223a5
Date: Sun, 27 Aug 2023 20:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693169048
