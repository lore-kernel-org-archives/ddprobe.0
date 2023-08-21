Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F7BF4F5
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 17:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E6EC433C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 17:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692638648;
	bh=AuJ/L4oi49mlU/7PW1qjHX4TgHzYikS7+XYU4ni8p6E=;
	h=To:Subject:From:Date:From;
	b=E4g5VTll2qBKfelrl2XKjsN4uBRNTQY7dYZNsuMGEMM7ZfRUibBF8ETc6Q8jgEAkv
	 jJx7B0WGmHSjlY6iycpe2T1Q0YvH/jUdqrT4mZyfo95LuR17QHpsu677hdP8ck0g7O
	 VEnHhdW7U8M8KWZ7BCiP8aJKGDuVGsOQpwolktbkPg1S2YuCj2Bd9CfoHPcsBDtnle
	 YJWAvt54KTqcRPPdh6VbwK3oGdDdgoGAw5qKCP2riAsgST4mIIQc03/DsxBHtqETrf
	 cYxb0C9ccH7cSW7i3ufdVcQxVL3bE89bGOUtdEhZ+oEdFuCwt5naaXoX3AHoG1ZB4b
	 OBa1BJxLt1/QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAEBEE4993
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 17:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169263864869.11154.6911106947218766714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374af16d99a90783af3a975d960866228b599b7bbc6291bbfa8300371c27155d
Date: Mon, 21 Aug 2023 17:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692638648
