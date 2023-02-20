Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677FB7F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 04:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2328C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 04:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676869086;
	bh=IolmPtrszGcxW3Hjkf/jrPun1nYSA7wWfVvb0RJnGPg=;
	h=To:Subject:From:Date:From;
	b=E66T5A3xaWbnayDWlxE6x8f9Qf3R8w+UTys41w0ecOHQaa9Onux2e/owIsSxMSPWb
	 I+7XlCpgmf5yU2UAim6PyOAZV+WSzjdemZrRC5WWpYnqKGJIyoJKYitVzqZ5lZkQHq
	 fokHVtBYVfT5D4/iOL+cnEvWcH13rvcl6w3rVspjKhJy/+6bPXBKcwp7WNA2UxoOri
	 62fUpJjqLHv0z+uFleCPbD7cqBK1aFSEQ+F5wskowD35/r/exVwieda2F3iuMIrw+C
	 xbwKR97vTLPpGRBOtsCi4x7TKhhWq0EJ3mx9iqNbQSczF7+b1i1dMNPwsVeHUFNH0K
	 PUei3tfY3xsmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8303C05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 04:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167686908580.22767.15359392219311598967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbf2484b3f4006fa1f3f58ba19f23fabedea26b8fb03cf4e3ae6c3a74a779a8
Date: Mon, 20 Feb 2023 04:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676869085
