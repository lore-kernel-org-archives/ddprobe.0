Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA9F6FB4
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8736DC433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671480687;
	bh=7NCLEELe3k8ubk1apnyvFtna2uUQGjqwx18mO0sp1OQ=;
	h=To:Subject:From:Date:From;
	b=HmAzAYttvAxsLI3ikyPaRoKUWV1QIMNhzM255R89P0wvSGq455lC+8TnWG3Kp6gOl
	 iKtUUCyJ2hjWuxJ8L0TkKOIYZCnZGY5qVxxKpeVcijCVqnHdyu2aKb/uOvJ5Vj0vUo
	 BMJGj7OtxdkAf1YdQA716o6PurR8gjZXrp2c2xg3Ka8Fiw6w0f3CeUJjCa5w2e/Dvi
	 7mvHmnuNUrRKKfR+xpXstRNWzUz/EjqDLFopZXWyuqmkioqvVjY4hb663NCwnL/fOx
	 WR1dgkuYj2UqBDvLFtDuv7trlaCcQVTnOt49ZJ2gY+qU9TgYAxNKIrDfCxScFES2Y4
	 /Y4AWwtSqWzyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C2DAC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167148068743.27239.12485544109255251373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f10e1ca5f322b820fa1f0c33031e21ca74d141e7b505aa8ce79a5adddc81ca9
Date: Mon, 19 Dec 2022 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671480687
